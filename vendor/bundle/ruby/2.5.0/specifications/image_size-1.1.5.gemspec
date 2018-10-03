# -*- encoding: utf-8 -*-
# stub: image_size 1.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "image_size".freeze
  s.version = "1.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keisuke Minami".freeze, "Ivan Kuchin".freeze]
  s.date = "2013-12-23"
  s.description = "Measure following file dimensions: bmp, gif, jpeg, pbm, pcx, pgm, png, ppm, psd, swf, tiff, xbm, xpm".freeze
  s.homepage = "http://github.com/toy/image_size".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "image_size".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Measure image size using pure Ruby".freeze

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
