# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'model_to_locale/version'

Gem::Specification.new do |spec|
  spec.name          = "model_to_locale"
  spec.version       = ModelToLocale::VERSION
  spec.authors       = ["lab2023"]
  spec.email         = ["info@lab2023.com"]
  spec.description   = %q{Create a locale attributes from model}
  spec.summary       = %q{Create a locale attributes from model}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
