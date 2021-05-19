# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest_visible/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest_visible"
  spec.version       = MinitestVisible::VERSION
  spec.authors       = ["Peter Camilleri"]
  spec.email         = ["peter.c.camilleri@gmail.com"]
  spec.homepage      = "http://teuthida-technologies.com/"
  spec.description   = "Slightly more visible progress for mini-test."
  spec.summary       = "A bit of embellishment for mini-test progress."
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>=1.9.3'

  spec.add_development_dependency "bundler", ">= 2.1.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'reek', "~> 1.3.8"
  spec.add_development_dependency 'rdoc', "~> 4.0.1"

  spec.add_runtime_dependency 'minitest'

end
