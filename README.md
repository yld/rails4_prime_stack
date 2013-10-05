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
* cells
* ransack for advanced search
* rails_config for managing your settings per environment

### Development tools

* zeus with custom plan (sidekiq)
* i18n-tasks
* [pry](https://github.com/pry/pry) with a lot of plugins
* better_errors
* brakeman
* [rubocop](https://github.com/bbatsov/rubocop)
* i18n-tasks
* rcov (simplecov)
* bullet

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

- Clone repository
    git clone ...

- Make your own branch:
    git co master -b your_application_name

- Code

## Usage

- Install required gems
    gem install bundler
    bundle install
    gem install zeus

- Run zeus
    zeus starts

- Run guard (in another terminal):
    bundle exec guard

- Code (in another terminal)

- Rebase on master branch for eventual upgrade.
    git rebase master

Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks)

### Master upgrade

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


2.4.x or 2.6.x 'll do the trick'

## TODO

* add compass for CSS sprites
* simple blog test application on separate branch using each bundled feature

