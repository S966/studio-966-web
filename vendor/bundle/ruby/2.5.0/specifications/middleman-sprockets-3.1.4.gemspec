# -*- encoding: utf-8 -*-
# stub: middleman-sprockets 3.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-sprockets".freeze
  s.version = "3.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Reynolds".freeze]
  s.date = "2013-07-22"
  s.description = "Sprockets support for Middleman".freeze
  s.email = ["me@tdreyno.com".freeze]
  s.homepage = "https://github.com/middleman/middleman-sprockets".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Sprockets support for Middleman".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, [">= 3.0.14"])
      s.add_runtime_dependency(%q<middleman-more>.freeze, [">= 3.0.14"])
      s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<sprockets-sass>.freeze, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<sprockets-helpers>.freeze, ["~> 1.0.0"])
    else
      s.add_dependency(%q<middleman-core>.freeze, [">= 3.0.14"])
      s.add_dependency(%q<middleman-more>.freeze, [">= 3.0.14"])
      s.add_dependency(%q<sprockets>.freeze, ["~> 2.1"])
      s.add_dependency(%q<sprockets-sass>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<sprockets-helpers>.freeze, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, [">= 3.0.14"])
    s.add_dependency(%q<middleman-more>.freeze, [">= 3.0.14"])
    s.add_dependency(%q<sprockets>.freeze, ["~> 2.1"])
    s.add_dependency(%q<sprockets-sass>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<sprockets-helpers>.freeze, ["~> 1.0.0"])
  end
end
