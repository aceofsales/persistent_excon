# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persistent_excon/version'

Gem::Specification.new do |spec|
  spec.name          = "persistent_excon"
  spec.version       = PersistentExcon::VERSION
  spec.authors       = ["Ryan Schlesinger"]
  spec.email         = ["ryan@outstand.com"]

  spec.summary       = %q{Persistent connections with excon}
  spec.description   = %q{Adds configurable connection pools per host for persistent http connections}
  spec.homepage      = "https://github.com/outstand/persistent_excon"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "excon"
  spec.add_dependency "connection_pool"
  spec.add_dependency "thread_safe"

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "rspec"
end
