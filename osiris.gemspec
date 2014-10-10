# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'osiris/version'

Gem::Specification.new do |spec|
  spec.name          = "osiris"
  spec.version       = Osiris::VERSION
  spec.authors       = ["Curtis Ekstrom"]
  spec.email         = ["code@fauxton.io"]
  spec.summary       = %q{Generate a Sinatra-based Mock API from a JSON-Schema file}
  spec.description   = %q{Generate a high-fidelity Sinatra-based Mock API from a JSON-Schema file}
  spec.homepage      = "https://github.com/fauxton/osiris"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "json_schema"
end
