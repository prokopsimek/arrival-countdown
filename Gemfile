source 'https://rubygems.org'


# Load env variables from .env file
gem 'dotenv-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end



gem 'puma'

# Hyper-concurent job worker
gem 'sidekiq' # sidekiq must be before Airbrake in Gemfile!
# Scheduler
gem 'sidekiq-scheduler', '~> 2.0'

gem 'sinatra', require: nil

# Gem for AWS cloud communication. We use it for S3 bucket service
gem 'aws-sdk', '~> 2'
# Gem that signs CloudFront URL's. 'aws-sdk' does not suuport this functionality directly
gem 'aws_cf_signer'


group :production do
  # Make our non-binary responses smaller
  # See https://github.com/romanbsd/heroku-deflater
  gem 'heroku-deflater'

  # Heroku rails compatibility gem
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # test doubles
  gem 'rspec-mocks'
  gem 'rspec_junit_formatter'

  # Our favorite testing framework
  gem 'rspec-rails'
  gem 'i18n-spec'
  gem 'db-query-matchers'
  gem 'fuubar' # RSpec formatter
  gem 'guard-rspec' # realtime changes watcher
  gem 'guard-rails'

  # JSON parser to speedup parsing json response from rspec requests
  gem 'oj' # https://github.com/ohler55/oj
  gem 'oj_mimic_json'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # To better debugging
  gem 'letter_opener_web', '~> 1.2.0'

  # Rubocop power
  gem 'rubocop'

  gem 'foreman'

  # Gem for reducing the number of queries
  gem 'bullet'

  # debug requests on development
  gem 'meta_request'
end

ruby '2.2.4'

