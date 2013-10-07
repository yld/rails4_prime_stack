# Prime stack template application

This is a Rails 4 [prime stack](http://words.steveklabnik.com/rails-has-two-default-stacks) base application for quick and easyly bootstrapping an application with up to date comptaibles gems and easy upgrade using the improvents of a common trunk.

It does not rely on the [Rails templates](http://edgeguides.rubyonrails.org/rails_application_templates.html) for new application generation but on git branching/[rebasing](http://git-scm.com/book/en/Git-Branching-Rebasing).

## Objectives

Having a strong reliable stack for fast application bootstrapping, with the following features:

* full text search
* postgresql for complex data types handling
* full rspec
* full cucumber
* drb/jobs processor (sidekiq)
* clean, fast and easy UI design, responsive/adaptative HTML facilities via [bootstrap 3](http://getbootstrap.com/)
* html 5 only compliant (IE>=8 support granted but possible via modern)
* lots of productivity and quality tools (speed enhancement, error reporting, code scanners, etc.)

## Requirements
### [RVM](https://rvm.io/)
Any compatible Ruby version manager should work (ie. using.ruby-version and .ruby-gemset), but be carefull to remove capistano-rvm gem
### Ruby 2.x
As specified in .ruby-version
### [Postresql](http://www.postgresql.org/) server
Tested with 9.2 version.

Required Postgresql extensions:
* hstore
* array
* probably full text search

### [REDIS](http://redis.io/) server
2.4.x or 2.6.x 'll do the trick'

## Components (gems) list

### Database (mostly Postresql related)
* [pg_array_parser](https://github.com/dockyard/pg_array_parser)
* [postgres_ext](https://github.com/dockyard/postgres_ext) for CIDR, mac address handling and more
* [postgresql_cursor](https://github.com/afair/postgresql_cursor)
* [pg_search](https://github.com/Casecommons/pg_search) postgresql full text search
* [foreigner](https://github.com/matthuhiggins/foreigner) for database foreign keys manageent in migrations (and more)
* [immigrant](https://github.com/jenseng/immigrant) for foreign keys fixes
* [octopus](https://github.com/tchandy/octopus) for database sharding (eventualy)

### UI
* [bootstrap 3](http://getbootstrap.com/) everywhere (with customizable CSS)
* [simpleform](https://github.com/plataformatec/simple_form) (with [carmen](https://github.com/jim/carmen-rails) as country selector)
* [simple-navigation](https://github.com/andi/simple-navigation) (with [bootstrap nav generator](https://github.com/pdf/simple-navigation-bootstrap)) for easy (sub)menu and navigation.
* [kaminari](https://github.com/amatsuda/kaminari) for pagination
* default layout(s) for fast views initialization
* HTML 5 ony ([modernizer](http://modernizr.com) inside)

### Javascript
* [d3](http://d3js.org/) (with [d3_rails](https://github.com/logical42/d3_rails)) for data driven document and pretty SVG graphing
* [jquery-turbolinks](https://github.com/kossnocorp/jquery.turbolinks)
* RAILS 4 barebone turbolinks

### UI & tools
* [devise](https://github.com/plataformatec/devise)
* [sidekiq](https://github.com/mperham/sidekiq)
* [haml](http://haml.info/docs/yardoc/file.REFERENCE.html) & [sass](http://sass-lang.com/)
* [cells](https://github.com/apotonick/cells) with [](https://github.com/apotonick/rspec-cells)
* [ransack](https://github.com/ernie/ransack) for advanced search
* [rails_config](https://github.com/railsjedi/rails_config) for managing your settings per environment

### i18n
* [i18n_generators](https://github.com/amatsuda/i18n_generators) to import desired locales from https://github.com/svenfuchs/rails-i18n
* [i18n-tasks](https://github.com/glebm/i18n-tasks) to check your locales parity
* [translations for devise](https://github.com/tigrish/devise-i18n) and [localized views generators](https://github.com/mcasimir/devise-i18n-views)
* you still need to add your own transalation for:
  * responders

### Development tools
* [zeus](https://github.com/burke/zeus) with custom plan (sidekiq)
* [pry](https://github.com/pry/pry) with a lot of plugins (almost bundled in guard)
* [better_errors](https://github.com/charliesome/better_errors)
* rcov ([simplecov](https://github.com/colszowka/simplecov))
* [bullet](https://github.com/flyerhzm/bullet) to reduce he number of databse queries and increase application performances
* [showfor](https://github.com/plataformatec/show_for) for fat show action
* [inherited_resources](https://github.com/josevalim/inherited_resources)

### Others tools
* exception_notification
* paper_trail

### Deployment tools

* [capistano](https://github.com/capistrano/capistrano‎)
* [capistano-rvm](https://github.com/wayneeseguin/rvm-capistrano)
* [capistrano-notifier](https://github.com/cramerdev/capistrano-notifier)

### Testing and quality

* [rspec-rails](https://github.com/rspec/rspec-rails)
* [cucumber-rails](https://github.com/cucumber/cucumber-rails)
* [guard](https://github.com/guard/guard) (with all usefull plugins installed and configured)
* [metric_fu](https://github.com/metricfu/metric_fu) metrics tools
* [factory_girl](https://github.com/thoughtbot/factory_girli_rails) (installed in ./factories) and factories
* [brakeman](https://github.com/presidentbeef/brakeman) (a static analysis security vulnerability scanner for Ruby on Rails applications) bundled in guard
* [rubocop](https://github.com/bbatsov/rubocop) bundled in guard

## Install

1. Clone repository
  ```Shell
  git clone ...
  ```

2. Make your own branch:

  ```Shell
  git checkout master -b your_application_name
  ```

3. Code
4. Install required gems
  ```Shell
  gem install bundler
  bundle install
  gem install zeus
    ```

5. Install additionnal tools
    * [livereload](http://livereload.com/) in your browser
    * html2sass if you mind
    * hash_syntax for 1.8 to 1.9 conversion (and metrics compliance)

## General usage

1. Run zeus
```Shell
zeus start
```

2. Run guard (in another terminal):
```Shell
bundle exec guard
```

3. Code (in another terminal), see [below](#code) for guidance.

4. Rebase on master branch for eventual upgrade.
```Shell
git rebase master
```

Note that might want to use tools like [tmuxinator](https://github.com/aziz/tmuxinator) to run all of this process in one tmux sesion with a configuration like this one (for development environment), assuming you've checkout this repository on ~/:
```YAML
name: rails4_prime_stack
root: ~/rails4_prime_stack
tmux_options:  -2 -u
windows:
  - zeus: zeus start
  - guard: sleep 30 && bundle exec guard
  - server: sleep 30 && zeus s
  - console: sleep 30 && zeus c
  - logs: tail -f log/development.log
```

## Code
Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks when present)

## Master edit and upgrade

To be completed (waiting for simple blog application in parallel branch).

The process is as follow:

1. add the gem to master (and some basic setup if necesary)
2. rebase with an application using the full gem stack
3. test using rpec/cucumber and various code metrics (reek, rubocop...) and/or use guard
3. backport to master
4. document

For simple gem upgrade [bundle-auto-update](https://github.com/versapay/bundler-auto-update) might be usefull: run it against your code or the master branch.

Most of the gems (except those needed by RAILS) are not sticked to a precise version in that perspective.

## Components (gems) setup
You may wish to remove some component to decrease your applicaton overhead: just do it in your Gemfile.

### Removal
A few gems are already (totally or partially) setup when necessay. If you wish to remove them, ou basically need to run destroyers (inverse of generators).

For complete removal of several gems, here are the steps to follow:
* simple-navigation:
  remove configuration (config/navigation.rb)
* sidekiq:
  1. remove sidekiq initializer and edit devise-async'one or remove the gem
  2. re-generate exception_notification configuration without the --sidekiq flag
* guard plugin: remove plugin from Gemfile and from Guardfile)
* turbolinks:
  remove the gem itself (with jquery-turbolinks and client_side_validations-turbolinks)
  edit app/assets/javascripts/application.js
* i18n: edit application.rb
* inherited resources
* responders
  ```Shell
  zeus d responders:install
  ```

* rails_config (bad idea):
  1. remove all references to Settings class
  2. uninstall generated files
  ```Shell
  zeus d rails_config:install
  ```

* exception_notification
  ```Shell
  zeus d exception_notification:install
  ```

* paper_trail
  ```Shell
  zeus d paper_trail:install
  ```

### Setup

#### i18n
Currently only two locales are already installed: fr and en (without country specification):

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

## BUGS

* enable flay
## TODO

* add compass for CSS sprites
* simple blog test application on separate branch using each bundled feature

