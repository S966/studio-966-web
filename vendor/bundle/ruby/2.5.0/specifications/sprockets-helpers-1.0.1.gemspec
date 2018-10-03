# -*- encoding: utf-8 -*-
# stub: sprockets-helpers 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sprockets-helpers".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pete Browne".freeze]
  s.date = "2013-04-20"
  s.description = "Asset path helpers for Sprockets 2.x applications".freeze
  s.email = ["me@petebrowne.com".freeze]
  s.homepage = "https://github.com/petebrowne/sprockets-helpers".freeze
  s.rubyforge_project = "sprockets-helpers".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Asset path helpers for Sprockets 2.x applications".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 0.5"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_development_dependency(%q<test-construct>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sprockets>.freeze, ["~> 2.0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 0.5"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_dependency(%q<test-construct>.freeze, ["~> 1.2"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 1.4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sprockets>.freeze, ["~> 2.0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 0.5"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
    s.add_dependency(%q<test-construct>.freeze, ["~> 1.2"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
