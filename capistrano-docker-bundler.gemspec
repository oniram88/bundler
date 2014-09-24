# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-docker-bundler'
  spec.version       = '0.1.0'
  spec.authors       = ['Tom Clements', 'Lee Hambley', 'Kir Shatrov','Marino Bonetti']
  spec.email         = ['seenmyfate@gmail.com', 'lee.hambley@gmail.com', 'shatrov@me.com','marinobonetti@gmail.com']
  spec.description   = %q{Bundler support for Capistrano 3.x in Docker enviroment}
  spec.summary       = %q{Bundler support for Capistrano 3.x in Docker enviroment}
  spec.homepage      = 'https://github.com/oniram88/bundler.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.1'
  spec.add_dependency 'sshkit', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
