# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/rpm/blob/master/LICENSE for complete details.

module NewRelic
  module Agent
    class TracedMethodFrame
      attr_reader :tag
      attr_accessor :name, :start_time, :children_time, :category
      def initialize(tag, start_time)
        @tag = tag
        @start_time = start_time
        @children_time = 0
      end
    end

    # TracedMethodStack is responsible for tracking the push and pop of methods
    # that we are tracing, notifying the transaction sampler, and calculating
    # exclusive time when a method is complete. This is allowed whether a
    # transaction is in progress not.
    class TracedMethodStack
      def initialize
        @stack = []
      end

      def self.tl_push_frame(tag, time = Time.now.to_f)
        state = NewRelic::Agent::TransactionState.tl_get
        stack = state.traced_method_stack
        stack.push_frame(state, tag, time)
      end

      def self.tl_pop_frame(expected_frame, name, time, deduct_call_time_from_parent=true)
        state = NewRelic::Agent::TransactionState.tl_get
        stack = state.traced_method_stack
        stack.pop_frame(state, expected_frame, name, time, deduct_call_time_from_parent)
      end

      # Pushes a frame onto the transaction stack - this generates a
      # TransactionSample::Segment at the end of transaction execution.
      #
      # The generated segment won't be named until pop_frame is called.
      #
      # +tag+ should be a Symbol, and is only for debugging purposes to
      # identify this frame if the stack gets corrupted.
      def push_frame(state, tag, time = Time.now.to_f)
        transaction_sampler.notice_push_frame(state, time) if sampler_enabled?
        frame = TracedMethodFrame.new(tag, time)
        @stack.push frame
        frame
      end

      # Pops a frame off the transaction stack - this updates the transaction
      # sampler that we've finished execution of a traced method.
      #
      # +expected_frame+ should be TracedMethodFrame from the corresponding
      # push_frame call.
      #
      # +name+ will be applied to the generated transaction trace segment.
      def pop_frame(state, expected_frame, name, time, deduct_call_time_from_parent=true)
        frame = @stack.pop
        fail "unbalanced pop from blame stack, got #{frame ? frame.tag : 'nil'}, expected #{expected_frame ? expected_frame.tag : 'nil'}" if frame != expected_frame

        note_children_time(frame, time, deduct_call_time_from_parent)

        transaction_sampler.notice_pop_frame(state, name, time) if sampler_enabled?
        frame.name = name
        frame
      end

      def note_children_time(frame, time, deduct_call_time_from_parent)
        if !@stack.empty?
          if deduct_call_time_from_parent
            @stack.last.children_time += (time - frame.start_time)
          else
            @stack.last.children_time += frame.children_time
          end
        end
      end

      def sampler_enabled?
        Agent.config[:'transaction_tracer.enabled'] || Agent.config[:developer_mode]
      end

      def transaction_sampler
        Agent.instance.transaction_sampler
      end

      def clear
        @stack.clear
      end

      def empty?
        @stack.empty?
      end
    end
  end
end
