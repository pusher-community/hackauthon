# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hackathon/version'

Gem::Specification.new do |spec|
  spec.name          = "pusher-hackathon"
  spec.version       = PusherHackathon::VERSION
  spec.authors       = ["Jamie Patel"]
  spec.email         = ["jamie@notespublication.com"]
  spec.summary       = %q{Yolo}
  spec.description   = %q{w00t}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["pusher-hackathon"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "commander", ">= 4.2.1"
  spec.add_runtime_dependency "sinatra", ">=1.4.6"
  spec.add_runtime_dependency "pusher", ">= 0.14"
end
