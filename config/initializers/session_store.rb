# Be sure to restart your server when you modify this file.

#H2ts3::Application.config.session_store :cookie_store, key: '_h2ts3_session'
H2ts3::Application.config.session_store :redis_store, key: '_h2ts3_session'
