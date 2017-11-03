Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.

  config.assets.cache_store = :null_store  # Disables the Asset cache
  config.sass.cache = false  # Disable the SASS compiler cache  

  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = true

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Do not compress assets
  config.assets.compress = false  

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.

  config.active_job.queue_adapter = :sidekiq
  config.active_job.queue_name_prefix = "dbm"
  config.active_job.queue_name_delimiter = "_"

  config.assets.raise_runtime_errors = true

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:        'smtp.gmail.com',
    port:           587,
    domain:         'gmail.com',
    user_name:      'bhargavpvi.dev',
    password:       'india@786',
    authentication: 'plain',
    :enable_starttls_auto  => true
  }
  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
