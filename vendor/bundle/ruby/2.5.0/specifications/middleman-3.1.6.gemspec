# -*- encoding: utf-8 -*-
# stub: middleman 3.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman".freeze
  s.version = "3.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Reynolds".freeze, "Ben Hollis".freeze]
  s.date = "2013-10-15"
  s.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.".freeze
  s.email = ["me@tdreyno.com".freeze, "ben@benhollis.net".freeze]
  s.homepage = "http://middlemanapp.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Hand-crafted frontend development".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, ["= 3.1.6"])
      s.add_runtime_dependency(%q<middleman-more>.freeze, ["= 3.1.6"])
      s.add_runtime_dependency(%q<middleman-sprockets>.freeze, [">= 3.1.2"])
      s.add_runtime_dependency(%q<haml>.freeze, [">= 3.1.6"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 3.1.20"])
      s.add_runtime_dependency(%q<compass>.freeze, [">= 0.12.2"])
      s.add_runtime_dependency(%q<uglifier>.freeze, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<coffee-script>.freeze, ["~> 2.2.0"])
      s.add_runtime_dependency(%q<execjs>.freeze, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 1.2"])
    else
      s.add_dependency(%q<middleman-core>.freeze, ["= 3.1.6"])
      s.add_dependency(%q<middleman-more>.freeze, ["= 3.1.6"])
      s.add_dependency(%q<middleman-sprockets>.freeze, [">= 3.1.2"])
      s.add_dependency(%q<haml>.freeze, [">= 3.1.6"])
      s.add_dependency(%q<sass>.freeze, [">= 3.1.20"])
      s.add_dependency(%q<compass>.freeze, [">= 0.12.2"])
      s.add_dependency(%q<uglifier>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<coffee-script>.freeze, ["~> 2.2.0"])
      s.add_dependency(%q<execjs>.freeze, ["~> 1.4.0"])
      s.add_dependency(%q<kramdown>.freeze, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, ["= 3.1.6"])
    s.add_dependency(%q<middleman-more>.freeze, ["= 3.1.6"])
    s.add_dependency(%q<middleman-sprockets>.freeze, [">= 3.1.2"])
    s.add_dependency(%q<haml>.freeze, [">= 3.1.6"])
    s.add_dependency(%q<sass>.freeze, [">= 3.1.20"])
    s.add_dependency(%q<compass>.freeze, [">= 0.12.2"])
    s.add_dependency(%q<uglifier>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<coffee-script>.freeze, ["~> 2.2.0"])
    s.add_dependency(%q<execjs>.freeze, ["~> 1.4.0"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 1.2"])
  end
end
