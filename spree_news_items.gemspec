# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_news_items'
  s.version     = '1.0.0'
  s.summary     = 'Extension to add news items to Spree'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Brian Wells'
  s.email     = 'spam_brian@me.com'
  s.homepage  = 'http://www.briandwells.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.0'

  s.add_development_dependency 'rspec-rails',  '~> 3.0.0'
end
