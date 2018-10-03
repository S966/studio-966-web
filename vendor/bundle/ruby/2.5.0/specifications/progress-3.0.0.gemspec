# -*- encoding: utf-8 -*-
# stub: progress 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "progress".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "2013-08-20"
  s.homepage = "http://github.com/toy/progress".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "progress".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Show progress of long running tasks".freeze

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
