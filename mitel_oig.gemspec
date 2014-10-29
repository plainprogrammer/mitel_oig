# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mitel/oig/version'

Gem::Specification.new do |spec|
  spec.name          = 'mitel_oig'
  spec.version       = Mitel::OIG::VERSION
  spec.authors       = ['James Thompson']
  spec.email         = %w{james@plainprograms.com}
  spec.summary       = %q{A client library for Mitel's OIG service.}
  spec.description   = %q{A client linrary for working with Mitel's OIG services.}
  spec.homepage      = 'https://github.com/plainprogrammer/mitel_oig'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{lib}

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_dependency 'savon', '~> 2.0'
end
