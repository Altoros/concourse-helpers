# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'concourse-helpers'
  spec.version       = ConcoursePipelineGenerator::VERSION
  spec.authors       = ["Alexander Lomov"]
  spec.email         = ["alexander.lomov@altoros.com"]
  spec.description   = %q{A simple gem to generate pipelines for ConcourseCI.}
  spec.summary       = %q{A simple gem to generate pipelines for ConcourseCI.}
  spec.homepage      = 'https://github.com/Altoros/concourse-pipeline-generator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'erubis', '~> 2.7.0'
  spec.add_runtime_dependency 'git', '~> 1.2.6'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.2.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec-mocks'
end
