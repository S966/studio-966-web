# -*- encoding: utf-8 -*-
# stub: image_optim 0.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "image_optim".freeze
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "2013-08-20"
  s.executables = ["image_optim".freeze]
  s.files = ["bin/image_optim".freeze]
  s.homepage = "http://github.com/toy/image_optim".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "image_optim".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Optimize (lossless compress) images (jpeg, png, gif) using external utilities (advpng, gifsicle, jpegoptim, jpegtran, optipng, pngcrush, pngout)".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fspath>.freeze, ["~> 2.0.5"])
      s.add_runtime_dependency(%q<image_size>.freeze, ["~> 1.1.2"])
      s.add_runtime_dependency(%q<exifr>.freeze, ["~> 1.1.3"])
      s.add_runtime_dependency(%q<progress>.freeze, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<in_threads>.freeze, ["~> 1.2.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fspath>.freeze, ["~> 2.0.5"])
      s.add_dependency(%q<image_size>.freeze, ["~> 1.1.2"])
      s.add_dependency(%q<exifr>.freeze, ["~> 1.1.3"])
      s.add_dependency(%q<progress>.freeze, ["~> 3.0.0"])
      s.add_dependency(%q<in_threads>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fspath>.freeze, ["~> 2.0.5"])
    s.add_dependency(%q<image_size>.freeze, ["~> 1.1.2"])
    s.add_dependency(%q<exifr>.freeze, ["~> 1.1.3"])
    s.add_dependency(%q<progress>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<in_threads>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
