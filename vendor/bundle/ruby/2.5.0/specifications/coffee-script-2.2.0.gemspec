# -*- encoding: utf-8 -*-
# stub: coffee-script 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "coffee-script".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeremy Ashkenas".freeze, "Joshua Peek".freeze, "Sam Stephenson".freeze]
  s.date = "2010-03-11"
  s.description = "    Ruby CoffeeScript is a bridge to the JS CoffeeScript compiler.\n".freeze
  s.email = "josh@joshpeek.com".freeze
  s.homepage = "http://github.com/josh/ruby-coffee-script".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Ruby CoffeeScript Compiler".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script-source>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<execjs>.freeze, [">= 0"])
    else
      s.add_dependency(%q<coffee-script-source>.freeze, [">= 0"])
      s.add_dependency(%q<execjs>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<coffee-script-source>.freeze, [">= 0"])
    s.add_dependency(%q<execjs>.freeze, [">= 0"])
  end
end