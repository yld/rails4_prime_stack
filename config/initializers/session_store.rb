# Be sure to restart your server when you modify this file.

#Rails4PrimeStack::Application.config.session_store :cookie_store, key: '_rails4_prime_stack_session'
Rails4PrimeStack::Application.config.session_store :redis_store, key: '_rails4_prime_stack_session'
