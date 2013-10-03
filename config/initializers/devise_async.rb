Devise::Async.setup do |config|

  config.queue = :devise_async_emails
  config.enabled = true # | false
  config.backend = :sidekiq

end
