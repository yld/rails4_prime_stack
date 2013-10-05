# Prime stack template application

This is a Rails 4 base application for quick and easyly bootstrapping an application with up to date comptaibles gems and easy upgrade using the improvents of a common trunk.

It does not rely on thr/Rails template but on git branching/rebasing for rails stack upgrade.

## Objectives

Having a strong reliable stack for fast application bootstrapping, with the following features:

* full text search
* postgresql for complex data types handling
* full rspec
* full cucumber
* drb/jobs processor (sidekiq)
* clean and easy UI design
* html 5 only compliant (no IE>=8 support granted)
* responsive/adaptative design facilities via [bootstrap 3](http://getbootstrap.com/)
* lots of productivity and qulity tools (speed enghancement, error reporting, code scanner, etc.)

## Requirements
### [RVM](https://rvm.io/)
Any compatible Ruby version manager should work (ie. using.ruby-version and .ruby-gemset), but be carefull to remove capistano-rvm gem
### Ruby 2.x
As specified in .ruby-version
### Postresql server
Tested with 9.2 version.
Required extensions:
* hstore
* array
* probably full text search

### REDIS server
2.4.x or 2.6.x 'll do the trick'

## Components (gems) list

### Database (mostly Postresql related)
* [pg_array_parser](https://github.com/dockyard/pg_array_parser)
* [postgres_ext](https://github.com/dockyard/postgres_ext) for IP, mac address handling and more
* [postgresql_cursor](https://github.com/afair/postgresql_cursor)
* [pg_search](https://github.com/Casecommons/pg_search) postgresql ull text search
* [foreigner](https://github.com/matthuhiggins/foreigner) for database foreign keys manageent in migrations (and more)
* [immigrant](https://github.com/jenseng/immigrant) for foreign keys fixes
* [octopus](https://github.com/tchandy/octopus) for database sharding

### UI
* [bootstrap 3](http://getbootstrap.com/) everywhere (with customizable CSS)
* [simpleform](https://github.com/plataformatec/simple_form) (with [carmen](https://github.com/jim/carmen-rails) as country selector)
* [simple-navigation](https://github.com/andi/simple-navigation) (with [bootstrap nav generator](https://github.com/pdf/simple-navigation-bootstrap)) for easy (sub)menu and navigation.
* [kaminari](https://github.com/amatsuda/kaminari) for pagination
* showfor
* [inherited_resources](https://github.com/josevalim/inherited_resources)
* default layout(s) for fast views initialization
* HTML 5 ony ([modernizer](http://modernizr.com) inside)

### Javscript
* [d3](http://d3js.org/) (with [d3_rails](https://github.com/logical42/d3_rails)) for data driven document and pretty SVG graphing
* [jquery-turbolinks](https://github.com/kossnocorp/jquery.turbolinks) already setup

### UI & tools
* [devise](https://github.com/plataformatec/devise)
* sidekiq
* haml & sass
* [cells](https://github.com/apotonick/cells) with [](https://github.com/apotonick/rspec-cells)
* [ransack](https://github.com/ernie/ransack) for advanced search
* [rails_config](https://github.com/railsjedi/rails_config) for managing your settings per environment

### i18n
* [i18n_generators](https://github.com/amatsuda/i18n_generators) to import desired locales from https://github.com/svenfuchs/rails-i18n
* [i18n-tasks](https://github.com/glebm/i18n-tasks) to check your locales parity
* [translations for devise](https://github.com/tigrish/devise-i18n) and [localized views generators](https://github.com/mcasimir/devise-i18n-views)

### Development tools
* [zeus](https://github.com/burke/zeus) with custom plan (sidekiq)
* [pry](https://github.com/pry/pry) with a lot of plugins, bundled in guard
* [better_errors](https://github.com/charliesome/better_errors)
* [brakeman](https://github.com/presidentbeef/brakeman) (a static analysis security vulnerability scanner for Ruby on Rails applications) bundled in guard
* [rubocop](https://github.com/bbatsov/rubocop) bundled in guard
* rcov ([simplecov](https://github.com/colszowka/simplecov))
* [bullet](https://github.com/flyerhzm/bullet) to reduce he nuber of your queries and increase application performances

### Deployment tools

* capistano
* capistano-rvm

### Testing

* rspec
* cucumber
* guard (with all usefull plugins availables)
* lot of metrics tools (those bundled with metric-fu, brakeman...)
* [factory_girl](https://github.com/thoughtbot/factory_girli_rails) (installed in ./factories) and factories

## Install

1. Clone repository

  ```Shell
  git clone ...
  ```

2. Make your own branch:

  ```Shell
  git co master -b your_application_name
  ```
3. Code
4. Install required gems
  ```Shell
  gem install bundler
  bundle install
  gem install zeus
  ```

5. Install additionnal tools
    * livereload in your browser

## General usage

1. Run zeus
```Shell
zeus start
```
2. Run guard (in another terminal):
```Shell
bundle exec guard
```
3. Code (in another terminal), see below for guidance.

4. Rebase on master branch for eventual upgrade.
```Shell
git rebase master
```

Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks when present)

## Master edit and upgrade

To be completed (waiting for simple blog application in parallel branch).

The process is:
1. add the gem to master (and some basic setup if necesary)
2. rebase with an application using the full gem stack
3. test using rpec/cucumber and various code metrics (reek, rubocop...) and/or use guard
3. backport to master
4. document

For simple gem upgrade [bundle-auto-update](https://github.com/versapay/bundler-auto-update) might be usefull: run it against your code or the master branch.

Most of the gems (exepted those needed by RAILS) are not sticked to a precise version in that perspective.

## Components setup
You may wish to remove some component to decrease your applicaton overhead: just do it in your Gemfile.

### Removal
A few gems are already (partially) setup, if you wish to remove them, here are the steps to follow:
* simple-navigation:
  remove configuration (config/navigation.rb)
* sidekiq:
  remove sidekiq initializer and edit devise-async'one or remove the gem
* guard plugin: remove plugin from Gemfile and from Guardfile)
* turbolinks:
  remove the gem itself (with jquery-turbolinks and client_side_validations-turbolinks)
  edit app/assets/javascripts/application.js
* i18n: edit application.rb

### Setup

#### i18n
1. edit application.rb
2. use

####Devise
* install your required plugins
* install and setup (see devise wiki)
* views
  generate localized views if your application is internationalized
```Shell
zeus g g devise:views:locale it
```
  and maybe (before):
```Shell
zeus g devise:views:i18n_templates
```

## TODO

* add compass for CSS sprites
* simple blog test application on separate branch using each bundled feature

