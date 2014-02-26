source 'https://rubygems.org'

gem 'rails', '4.0.3'

# Databases
gem 'pg'
gem 'pg_search'

# Assets
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'bootstrap-sass'

# Simple support for organizing items into parent–children relationships.
gem 'acts_as_tree', '~> 1.5.0'

# Administration framework
gem 'activeadmin', :github => 'gregbell/active_admin'
gem "activeadmin-sortable-tree", :github => "nebirhos/activeadmin-sortable-tree", :branch => "master"

# Webserver
gem 'unicorn'

group :production do
  gem 'rails_12factor' #Heroku deploy only
end

group :development do

  # Documentation
  gem 'annotate', ">=2.6.0" # Add a comment summarizing the current schema of each model

  gem 'guard', "~> 2.2.5"
  gem "guard-rspec", "~> 4.2.4", :require => false

  # Debugging
  gem 'better_errors'       # Web UI to debug exceptions. Go to /__better_errors to access the latest one
  gem 'binding_of_caller'  # Retrieve the binding of a method's caller in MRI Ruby >= 1.9.2

end

group :test do
  gem 'simplecov', :require => false # Test coverage generator. Go to /coverage/ after running tests
  gem 'coveralls', :require => false # Test coverage website. Go to https://coveralls.io
  gem 'database_cleaner'
end

group :development, :test do
  gem "rspec-rails", "~> 2.14.1"
  gem 'factory_girl_rails'
  gem 'capybara', '~> 2.2.0'
  gem "launchy", "~> 2.4.2"
end
