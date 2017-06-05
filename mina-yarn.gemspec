# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/yarn/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-yarn'
  spec.version       = Mina::Yarn::VERSION
  spec.authors       = ['Antoine Lépée']
  spec.email         = ['alepee@gmail.com']

  spec.summary       = %q{Yarn plugin for mina}
  spec.description   = %q{Get your node dependencies with Yarn}
  spec.homepage      = 'https://github.com/alepee/mina-yarn'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_dependency 'mina', '~> 1.0', '>= 1.0.0'
end
