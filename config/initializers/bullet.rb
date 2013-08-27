Rails.application.config.after_initialize do
  if Rails.env.development? ||  Rails.env.test?
    Bullet.enable = true
    Bullet.alert = true
    Bullet.bullet_logger = true
    Bullet.rails_logger = true
    #Bullet.raise = true
  end
end
