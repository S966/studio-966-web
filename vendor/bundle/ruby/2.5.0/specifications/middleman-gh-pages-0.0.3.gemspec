# -*- encoding: utf-8 -*-
# stub: middleman-gh-pages 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-gh-pages".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam McCrea".freeze]
  s.date = "2014-01-08"
  s.description = "Easy deployment of Middleman sites to Github Pages".freeze
  s.email = ["adam@adamlogic.com".freeze]
  s.homepage = "http://github.com/newcontext/middleman-gh-pages".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Easy deployment of Middleman sites to Github Pages".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>.freeze, ["> 0.9.3"])
    else
      s.add_dependency(%q<rake>.freeze, ["> 0.9.3"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["> 0.9.3"])
  end
end
