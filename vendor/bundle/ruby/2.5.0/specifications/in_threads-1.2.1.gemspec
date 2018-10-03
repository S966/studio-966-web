# -*- encoding: utf-8 -*-
# stub: in_threads 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "in_threads".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "2014-04-06"
  s.homepage = "http://github.com/toy/in_threads".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "in_threads".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Execute ruby code in parallel".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
