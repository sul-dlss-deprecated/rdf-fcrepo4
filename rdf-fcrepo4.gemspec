# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdf/fcrepo4/version'

Gem::Specification.new do |spec|
  spec.name          = "rdf-fcrepo4"
  spec.version       = RDF::FCRepo4::VERSION
  spec.authors       = ["Naomi Dushay"]
  spec.email         = ["ndushay@stanford.edu"]
  spec.summary       = %q{Fedora Commons Repository Version 4 vocabulary for RDF.rb and helper methods}
  spec.homepage      = ""
  spec.license       = "Apache 2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rdf'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
