source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'pg'

# front-end
gem 'jquery-rails'
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails', :github => 'anjlab/bootstrap-rails', :branch => '3.0.0'

# authentication
gem 'sorcery'

# templates
gem 'slim'

# server
gem 'unicorn'
gem 'foreman'

# background
gem 'delayed_job_active_record'

# searching
gem 'ransack'

# pagination
gem 'kaminari'

# forms
gem 'simple_form'

# file uploading
gem 'paperclip'
gem 'fog'

# environment variables
gem 'figaro'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass'
end

group :development, :test, :staging do
  gem 'minitest-rails'
end

group :test do
  gem 'minitest-rails-capybara'
  gem 'factory_girl_rails'
  gem 'mocha', :require => false
  gem 'simplecov', :require => false
  gem 'faker'
  gem 'launchy'
  gem 'webmock'
  gem 'turn'
end
