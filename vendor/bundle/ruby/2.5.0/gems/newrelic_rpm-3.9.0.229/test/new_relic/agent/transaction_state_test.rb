# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/rpm/blob/master/LICENSE for complete details.

require File.expand_path(File.join(File.dirname(__FILE__),'..','..','test_helper'))
require 'new_relic/agent/transaction'
require 'new_relic/agent/transaction_state'

module NewRelic::Agent
  class TransactionStateTest < Minitest::Test
    attr_reader :state

    def setup
      TransactionState.tl_clear_for_testing
      @state = TransactionState.tl_get
    end

    def teardown
      TransactionState.tl_clear_for_testing
    end

    def test_without_transaction_stack_on_thread
      assert_equal false, state.in_background_transaction?
      assert_equal false, state.in_request_transaction?
    end

    def test_in_background_transaction
      in_transaction(:category => :task) do |txn|
        txn.request = nil # this makes it a "background transaction"
        assert state.in_background_transaction?
      end
    end

    def test_in_request_tranasction
      in_transaction do |txn|
        txn.request = stub()

        assert state.in_request_transaction?
      end
    end

    def test_timings_with_transaction
      earliest_time = freeze_time

      in_transaction("Transaction/name") do |txn|
        txn.apdex_start = earliest_time
        txn.start_time = earliest_time + 5

        advance_time(10.0)
        timings = state.timings

        assert_equal 5.0, timings.queue_time_in_seconds
        assert_equal 5.0, timings.app_time_in_seconds
        assert_equal txn.best_name, timings.transaction_name
      end
    end

    def test_guid_from_transaction
      in_transaction do |txn|
        assert_equal state.request_guid, txn.guid
      end
    end

    GUID = "goo-id"

    def test_request_guid_to_include
      with_config(:apdex_t => 2.0) do
        freeze_time
        in_transaction do |txn|
          state.request_token = "token"
          advance_time(4.0)
          assert_equal state.current_transaction.guid, state.request_guid_to_include
        end
      end
    end

    def test_requst_guid_excluded_if_request_fast_enough
      with_config(:apdex_t => 2.0) do
        freeze_time

        state.request_token = "token"
        in_transaction do |txn|
          advance_time(1.0)
          assert_equal "", state.request_guid_to_include
        end
      end
    end

    def test_request_guid_excluded_if_no_token
      with_config(:apdex_t => 2.0) do
        freeze_time

        state.request_token = nil
        in_transaction do |txn|
          advance_time(4.0)
          assert_equal "", state.request_guid_to_include
        end
      end
    end

    def test_no_request_guid_for_event
      state.request_token = nil
      state.is_cross_app_caller = false
      state.referring_transaction_info = nil
      in_transaction do
        assert_nil state.request_guid_for_event
      end
    end

    def test_request_guid_for_event
      in_transaction do
        state.request_token = nil
        state.is_cross_app_caller = true
        state.referring_transaction_info = nil
        assert_equal state.current_transaction.guid, state.request_guid_for_event
      end
    end

    def test_request_guid_for_event_if_referring_transaction
      in_transaction do
        state.request_token = nil
        state.is_cross_app_caller = false
        state.referring_transaction_info = ["another"]
        assert_equal state.current_transaction.guid, state.request_guid_for_event
      end
    end

    def test_request_guid_for_event_if_there_for_rum
      with_config(:apdex_t => 2.0) do
        in_transaction do
          state.request_token = "token"
          state.is_cross_app_caller = false
          advance_time(10.0)
          assert_equal state.current_transaction.guid, state.request_guid_for_event
        end
      end
    end

    def test_reset_should_reset_cat_state
      state.is_cross_app_caller = true
      state.referring_transaction_info = ['foo', 'bar']

      assert_equal(true, state.is_cross_app_callee?)
      assert_equal(true, state.is_cross_app_caller?)

      state.reset

      assert_equal(false, state.is_cross_app_caller?)
      assert_equal(false, state.is_cross_app_callee?)
    end

    def test_reset_forces_traced_method_stack_clear
      state.traced_method_stack.push_frame(state, :reset_me)
      state.reset
      assert_empty state.traced_method_stack
    end

    def test_reset_doesnt_touch_record_tt
      state.record_tt = false
      state.reset
      refute state.record_tt
    end

    def test_reset_doesnt_touch_record_sql
      state.record_sql = false
      state.reset
      refute state.record_sql
    end

    def test_reset_doesnt_touch_untraced_stack
      state.push_traced(true)
      state.reset
      assert_equal [true], state.untraced
    end

    def test_reset_touches_everything!
      state.request = ::Rack::Request.new({})
      state.is_cross_app_caller = true
      state.client_cross_app_id = :client_cross_app_id
      state.referring_transaction_info = :referring_transaction_info
      state.request_token = :request_token
      state.busy_entries = 1
      state.sql_sampler_transaction_data = Object.new
      state.transaction_sample_builder = Object.new
      state.push_traced(true)

      state.reset

      # Anything in this list should be tested explicitly by itself!
      skip_checking = [:@traced_method_stack, :@record_tt, :@record_sql,
                       :@untraced]
      variables = state.instance_variables.map(&:to_sym) - skip_checking

      variables.each do |ivar|
        value = state.instance_variable_get(ivar)
        assert [0, nil, false, []].include?(value),
               "Expected #{ivar} to reset, but was #{value}"
      end
    end
  end
end
