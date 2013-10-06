Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{Settings.redis_sidekiq.host}:#{Settings.redis_sidekiq.port}", namespace: Settings.redis_sidekiq.namespace  }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{Settings.redis_sidekiq.host}:#{Settings.redis_sidekiq.port}", namespace: Settings.redis_sidekiq.namespace  }
end
