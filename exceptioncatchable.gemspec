Gem::Specification.new do |gem|
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.summary       = %q{Provide block-scope for to catch exceptions easy.}
  gem.description   = %q{Provide block-scope for to catch exceptions easy.}
  gem.homepage      = 'https://github.com/kachick/exceptioncatchable'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'exceptioncatchable'
  gem.require_paths = ['lib']
  gem.version       = '0.0.1'

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
end

