# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-tme-open-bin/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-tme-open-bin'
  spec.version       = CBin::VERSION
  spec.authors       = ['demoker']
  spec.email         = ['dongkai.ma@tencentmusic.com']
  spec.description   = %q{cocoapods-tme-open-bin is a plugin which helps develpers switching pods between source code and binary.}
  spec.summary       = %q{cocoapods-tme-open-bin is a plugin which helps develpers switching pods between source code and binary.}
  spec.homepage      = 'https://github.com/tme-open/cocoapods-tme-open-bin.git'
  spec.license       = 'MIT'

  spec.files = Dir["lib/**/*.rb","spec/**/*.rb","lib/**/*.plist"] + %w{README.md LICENSE.txt }
  # spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'parallel', '~> 1.22.0'
  spec.add_dependency 'cocoapods', ['>= 1.10.2', '<= 1.11.3']
  # spec.add_dependency 'cocoapods', '1.10.2'
  spec.add_dependency "cocoapods-generate", '~> 2.2.4'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
