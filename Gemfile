source 'https://rubygems.org'

ruby '2.2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use PostgreSQL as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
#gem 'sass-rails', '~> 4.0.3'
gem 'sass-rails', '~> 5.0.1'
# gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
#jQuery plugin for drop-in fix binded events problem caused by Turbolinks
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Needed for custom auth / user store -- revisit if using devise or other similar.
gem 'bcrypt'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Use normalize css

gem 'foundation-rails', github: "zurb/foundation-rails"

group :development do
  gem 'rails_layout'
  gem 'byebug', '~> 3.5.1'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails', "~> 4.0"
end

group :test do
  gem 'capybara'
end

# Heroku recommends:
group :production do
  gem 'rails_12factor'
end

gem 'puma'

gem 'devise'

gem 'newrelic_rpm'
