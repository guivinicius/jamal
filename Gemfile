source 'https://rubygems.org'

gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :development do
  gem 'guard', "~> 2.2.5"
  gem "guard-rspec", "~> 4.2.4", :require => false
end

group :test do
  gem 'coveralls', :require => false
  gem 'database_cleaner'
end

group :development, :test do
  gem "rspec-rails", "~> 2.14.1"
  gem 'factory_girl_rails'
  gem 'capybara', '~> 2.2.0'
end
