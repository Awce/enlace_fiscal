# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enlace/fiscal/version'

Gem::Specification.new do |spec|
  spec.name          = "enlace-fiscal"
  spec.version       = Enlace::Fiscal::VERSION
  spec.authors       = ["Mario A Chavez"]
  spec.email         = ["mario.chavez@gmail.com"]
  spec.summary       = %q{Enlace Fiscal API Client}
  spec.description   = %q{Client for REST API to generate Mexcan CFDi}
  spec.homepage      = "https://github.com/mariochavez/enlace_fiscal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'weary'
  spec.add_dependency 'json'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry"
end
