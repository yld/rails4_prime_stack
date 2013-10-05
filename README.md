h1. Prime stack template application

This is a Rails 4 base application for quick and easy bootstrapping with up to date comptaibles gems.

It does not rely on thr/Rails template but on git branching/rebasing

h2. Objectives

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

h2. Components list

h3. Testing

* rspec
* cucumber
* guard (with all usefull plugins availables)
* lot of metrics tools (those bundled with metric-fu, brakeman...)
* factory_girl and factories

h3. UI

* bootstrap everywhere (with customizable CSS)
* simpleform (with carmen as country selector), showfor and inherited_resources
* default templates for fast views initialization
* HTML 5 ony (odernizer bundled)
* simple-navigation (with bootstrap nav generator)

h3. UI & tools

* devise
* d3 (with d3_rails)
* i18n tools
* sidekiq
* haml & sass
* cells
* ransack for advanced search
* rails_config for managing your settings per environment

h3. Development tools

* zeus with custom plan (sidekiq)
* i18n-tasks
* [pry](https://github.com/pry/pry) with a lot of plugins
* better_errors
* brakeman
* [rubocop](https://github.com/bbatsov/rubocop)
* i18n-tasks
* rcov (simplecov)
* bullet

h3. Deployment tools

* capistano
* capistano-rvm

h2. Install

Clone repository
<pre>
git clone ...
</pre>

Make your own branch:
<pre>
git co master -b your_application_name
</pre>

h2. Usage

# Install required gems
<pre>
gem install bundler
bundle install
gem install zeus
</pre>

# Run zeus
<pre>
zeus starts
</pre>

# Run guard (in another terminal)
<pre>
bundle exec guard
</pre>

# Code (in another terminal)

# Rebase on master branch for eventual upgrade.
<pre>
# in your branch
git rebase master
</pre>

Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks)

h3. Master upgrade

[bundle-auto-update](https://github.com/versapay/bundler-auto-update) run it against your code or the master branch

h2. Requirements

h3. RVM

Or any compatible Ruby version manager

h3. Ruby 2.x

As specified in .ruby-version

h3. Postresql server

Tested with 9.2 version.

Required extensions:
* hstore
* array
* probably full text search


2.4.x or 2.6.x 'll do the trick'

h2. TODO

* add compass for CSS sprites
* simple blog test application on separate branch using each bundled feature

