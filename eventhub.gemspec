# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventhub/version'

Gem::Specification.new do |spec|
  spec.name          = "eventhub"
  spec.version       = Eventhub::VERSION
  spec.authors       = ["Jonathan Soeder"]
  spec.email         = ["jonathan.soeder@gmail.com"]
  spec.description   = %q{Eventhub provides a clean pattern for projects with a lot of event tracking / handling}
  spec.summary       = %q{Event hub provides a clean, central place to track events that happen throughout your code base and respond to them with things like email or push notifications.}
  spec.homepage      = "architects.github.io/eventhub"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
