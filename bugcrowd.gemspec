# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bugcrowd/version'

Gem::Specification.new do |spec|
  spec.name          = "bugcrowd"
  spec.version       = Bugcrowd::VERSION
  spec.authors       = ["Matthew Conway"]
  spec.email         = ["conway@heroku.com"]

  spec.summary       = %q{Ruby wrapper for the Bugcrowd HTTP API}
  spec.description   = %q{Ruby wrapper for the Bugcrowd HTTP API}
  spec.homepage      = "https://github.com/mattreduce/bugcrowd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "excon", "~> 0.55"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
