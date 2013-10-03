h1. Prime stack template application

This is a Rails 4 base application for quick and easy bootstrapping with up to date comptaibles gems.

It does not rely on thr/Rails template but on git branching/rebasing

h2 Objectives

Having a strong reliable stack for fast application bootstrapping, with the following features:

* full text search
* postgresql
* full rspec
* full cucumber
* dbr/jobs processor (sidekiq)
* clean and easy UI design
* html 5 only compliant
* responsive/adaptative design facilities

h2. Components

h3. Testing

* rspec
* cucumber
* guard (full stack)
* lot of metrics tools
* factory_girl and factories

h3. UI

* bootstrap everywhere (with customizable CSS)
* simpleform, showfor and inherited_resources
* default templates for fast views initialization
* HTML 5 ony (odernizer bundled)

h3. Tools

* devise
* d3
* i18n tools
* sidekiq
* haml & sass
* zeus with custom plan (sidekiq)

h2. Install

<pre>
git clone ...
</pre>

h2 Usage

h3. Branch from master
<pre>
git co master -b your_application_name
</pre>

Write your code in your own branch and then rebase on master branch for eventual upgrade.
<pre>
# in your branch
git rebase master
</pre>

Please pay attention to stay compatible with master branch (ie. put your code between '### application code here' marks)

h3. Master upgrade

bundle-update bundled, giveit a try for master auto-upgrade

h2. Requirements

h3. RVM

Or any compatible Ruby version man

h3. Ruby 2.x

As specified in .ruby-version

h3. Postresql server

Tested with 9.2 version.

Required extensions:
* hstore
* array
* probably full text search


h3. Redis server

2.4.x or 2.6.x 'll do the trick'

h2. TODO

* add compass for CSS sprites
* simple blog test application

