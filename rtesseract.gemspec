# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: rtesseract 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rtesseract"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Danilo Jeremias da Silva"]
  s.date = "2014-02-07"
  s.description = "Ruby library for working with the Tesseract OCR."
  s.email = "dannnylo@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".travis.sh",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/processors/mini_magick.rb",
    "lib/processors/rmagick.rb",
    "lib/rtesseract.rb",
    "lib/rtesseract/errors.rb",
    "lib/rtesseract/mixed.rb",
    "rtesseract.gemspec",
    "spec/images/mixed.tif",
    "spec/images/test with spaces.tif",
    "spec/images/test.bmp",
    "spec/images/test.jpg",
    "spec/images/test.png",
    "spec/images/test.tif",
    "spec/images/test1.tif",
    "spec/rtesseract_mixed_spec.rb",
    "spec/rtesseract_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/dannnylo/rtesseract"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.0"
  s.summary = "Ruby library for working with the Tesseract OCR."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end

