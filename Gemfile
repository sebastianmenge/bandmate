source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem "gravatar_image_tag", "~> 1.0.0"



group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end


gem 'json'



group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

group :development do 
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', 
  :git => 'git://github.com/jeremyolliver/annotate_models.git', :branch => 'rake_compatibility'
end

group :test do
  gem 'rspec-rails', '2.6.1'
  gem 'webrat'
  gem 'spork', '0.9.0.rc8'
  gem 'ZenTest' #######
  gem "factory_girl_rails", "~> 1.2.0"
end


