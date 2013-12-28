inject_into_file 'Gemfile', after: "### capybara drivers\n" do
"
gem 'poltergeist'
"
end

inject_into_file '',  '' do
"
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
"
end

# test phantomjs
