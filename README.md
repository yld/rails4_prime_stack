# Prime stack template application

This is a Rails 4 base application for quick and easy bootstrapping with up to date comptaibles gems.

It does not rely on thr/Rails template but on git branching/rebasing

## Objectives

Having a strong reliable stack for fast application bootstrapping, with the following features:

* full text search
* postgresql
* full rspec
* full cucumber
* drb/jobs processor (sidekiq)
* clean and easy UI design
* html 5 only compliant
* responsive/adaptative design facilities
* lots of productivity and qulity tools (speed enghancement, error reporting, code scanner, etc.)

## Components list

### UI

* bootstrap everywhere (with customizable CSS)
* simpleform (with carmen as country selector), showfor and inherited_resources
* default templates for fast views initialization
* HTML 5 ony (odernizer bundled)
* simple-navigation (with bootstrap nav generator)

### UI & tools

* devise
* d3 (with d3_rails)
* i18n tools
* sidekiq
* haml & sass
* [cells](https://github.com/apotonick/cells) with [](https://github.com/apotonick/rspec-cells)
* ransack for advanced search
* [rails_config](https://github.com/railsjedi/rails_config) for managing your settings per environment

### Development tools

* [zeus](https://github.com/burke/zeus) with custom plan (sidekiq)
* [i18n-tasks](https://github.com/glebm/i18n-tasks)
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
* factory_girl and factories

## Install

1. Clone repository
    git clone ...

2. Make your own branch:
    git co master -b your_application_name

3. Code

## Usage

1. Install required gems
    gem install bundler
    bundle install
    gem install zeus

2. Run zeus
    zeus starts

3. Run guard (in another terminal):
    bundle exec guard

4. Code (in another terminal):

5. Rebase on master branch for eventual upgrade.
    git rebase master

Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks when present)

### Master upgrade

To be completed

[bundle-auto-update](https://github.com/versapay/bundler-auto-update) run it against your code or the master branch

## Requirements

### RVM

Or any compatible Ruby version manager

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

## TODO

* add compass for CSS sprites
* simple blog test application on separate branch using each bundled feature

