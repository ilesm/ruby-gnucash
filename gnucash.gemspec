# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gnucash/version'

Gem::Specification.new do |gem|
  gem.name          = "gnucash"
  gem.version       = Gnucash::VERSION
  gem.authors       = ["Josh Holtrop"]
  gem.email         = ["jholtrop@gmail.com"]
  gem.description   = %q{Ruby library for extracting data from GnuCash data files}
  gem.summary       = %q{Extract data from GnuCash data files}
  gem.homepage      = "https://github.com/holtrop/ruby-gnucash"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "nokogiri"

  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-core"
  gem.add_development_dependency "rspec-expectations"
  gem.add_development_dependency "rspec-mocks"
end
