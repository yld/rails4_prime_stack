require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Rails4PrimeStack
  class Application < Rails::Application
    console do
      require 'pry'
      config.console = Pry
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'fr'
    config.i18n.available_locales = :fr

    config.generators do |g|
      g.orm             :active_record
      g.template_engine :haml
      g.test_framework  :rspec, fixture: true
      g.stylesheets     false
      g.stylesheet_engine :sass
      g.javascripts :false
      g.fixture_replacement :factory_girl, dir: 'factories'
      g.factory_girl dir: 'factories'
    end

    config.sass.preferred_syntax = :sass

    config.active_record.default_timezone :local

    config.cache_store = :redis_store

    ### middlewares
    config.after_initialize do
      #config.middleware.use ExceptionNotification::Rack,
      #  email: Settings.exception_notification.to_hash,
      #  ignore_if: [ :test ].include?(Rails.env)
      # moved to initializer
      # config.middleware.use ExceptionNotification::Rack, email: Settings.exception_notification.to_hash
    end
    ### end middlewares
  end
end
