source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use debugger
# gem 'debugger', group: [:development, :test]

# Use unicorn as the app server
gem 'unicorn'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.1'

### configuration
gem 'rails_config'
### end configuration

### postgresql support
gem 'pg'
gem 'pg_array_parser'
gem 'postgres_ext'
gem 'postgresql_cursor'
gem 'pg_search'
#gem 'pg_power'
### end postgresql support

## database
gem 'foreigner'
gem 'immigrant'
### database

### UI
gem 'kaminari'
gem 'd3-rails'
gem 'jquery-turbolinks'

### search
gem 'ransack'
### end search

### bootstrap
gem 'bootstrap-sass-rails'
gem 'bootstrap-generators', '~> 3.0'
gem 'bootstrap-datepicker-rails'
gem 'font-awesome-rails'
### end bootstrap

### navigation
gem 'simple-navigation'
gem 'simple-navigation-bootstrap'
### end navigation

### forms and i18n
gem 'carmen-rails'
gem 'simple_form', '3.0.0.rc'

gem 'i18n-country-translations'

gem 'client_side_validations'
gem 'client_side_validations-turbolinks'
gem 'client_side_validations-simple_form', git: 'git://github.com/saveritemedical/client_side_validations-simple_form.git'

gem 'rails-i18n'
### end forms and i18n


### end UI

### redis
gem 'redis-i18n'
gem 'redis-rails'
gem 'redis-store'
### redis

### tools
gem 'cells'
gem 'exception_notification'
gem 'http_accept_language'
gem 'haml-rails'
#gem 'compass-rails', github: 'milgner/compass-rails', branch: 'rails4'

gem 'paper_trail', '>= 3.0.0.beta1'

### process runnning
gem 'sidekiq'
gem 'sidekiq-cron'
### end process runnning

### inherited_resources
gem 'responders'
gem 'has_scope'
gem 'inherited_resources'
### end inherited_resources

### end tools

group :development, :test do
  gem 'bullet'
  gem 'factory_girl_rails', require: false
end

group :development do

  ### tools

  ### dependancies incompatibily with something
  # gem 'html2haml', require: false
  # gem 'hash_syntax'
  ### end dependancies incompatibily with something
  #
  gem 'brakeman', require: false
  #gem 'zeus', require: false
  ### end tools

  ### errors handling
  gem 'better_errors'
  gem 'binding_of_caller'
  ### end errors handling

  ### i18n
  gem 'i18n_generators'
  gem 'i18n-tasks', '~> 0.1.0', require: 'i18n/tasks'
  ### end i18n

  ### console & pry
  gem 'pry'
  gem 'pry-plus'
  gem 'pry-vterm_aliases'
  gem 'rails-env-switcher'
  gem 'rspec-console'
  gem 'cucumber-console'
  gem 'commands'
  ### end console & pry

  ### bundler
  gem 'bundler-audit'
  gem 'bundler-auto-update'
  ### end bundler

  ### deployment
  gem 'capistrano'
  gem 'capistrano-rvm'
  ### end deployment

  ### metrics
  gem 'metric_fu'
  gem 'rails_best_practices'
  gem 'flay-haml'
  gem 'flay-js'
  gem 'holepicker'
  gem 'consistency_fail'
  gem 'rack-livereload'
  # gem 'heckle'
  ### end metrics

  ### guard
  gem 'guard'
  gem 'guard-yaml'
  gem 'guard-jslint-on-rails'
  gem 'guard-rubocop'
  gem 'guard-sass', require: false
  gem 'guard-sidekiq'
  gem 'guard-reek'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-cucumber', '>= 0.6.1'
  gem 'guard-coffeescript'
  gem 'guard-brakeman'
  gem 'guard-rails_best_practices'
  gem 'guard-zeus'
  gem 'guard-livereload'
  gem 'rack-livereload'
  #gem 'guard-compass'
  gem 'yajl-ruby'
  gem 'guard-migrate'
  gem 'guard-redis'
  gem 'guard-ctags-bundler'
  gem 'rb-inotify'
  ### end guard

end

group :test do

  gem 'rspec-rails', '>= 2.14.0'
  gem 'email_spec', '>= 1.2.1'
  gem 'rspec-cells'

  gem 'cucumber-rails', '>= 1.4.0', require: false
  gem 'multi_test'
  gem 'database_cleaner', '>= 0.8.0'
  gem 'launchy', '>= 2.1.2'
  gem 'simplecov', require: false
  gem 'simplecov-rcov-text', require: false

  gem 'forgery'

end

### authentication
gem 'devise', '3.1.0'
gem 'devise-i18n'
gem 'devise-async'
#
### end authentication

# authorization
#gem 'cancan_strong_parameters'

### application specific

### end application specific
