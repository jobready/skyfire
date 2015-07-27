# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skyfire/version'

Gem::Specification.new do |spec|
  spec.name          = "skyfire"
  spec.version       = Skyfire::VERSION
  spec.authors       = ["Andrew McNamara"]
  spec.email         = ["andrewm@jobready.com.au"]

  spec.summary       = %q{Rails asset pipeline replacement}
  spec.description   = %q{Rails asset pipeline replacement.}
  spec.homepage      = "https://github.com/jobready/skyfire"
  spec.licenses = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
