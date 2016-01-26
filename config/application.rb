require File.expand_path('../boot', __FILE__)

#require 'rails/all'
require 'active_record/railtie'
require 'action_controller/railtie'
#require 'action_mailer/railtie'
require 'active_model/railtie'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PriMonitor
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    #config.middleware.disable 'Rack::Sendfile'
    # config.middleware.disable 'ActionDispatch::Static'
    # config.middleware.disable 'Rack::Lock'
    # config.middleware.disable '#<ActiveSupport::Cache::Strategy::LocalCache::Middleware:0x007faba1e883d0>'
    # config.middleware.disable 'Rack::Runtime'
    # config.middleware.disable 'Rack::MethodOverride'
    # config.middleware.disable 'ActionDispatch::RequestId'
    # config.middleware.disable 'Rails::Rack::Logger'
    # config.middleware.disable 'ActionDispatch::ShowExceptions'
    #config.middleware.disable 'WebConsole::Middleware'
    # config.middleware.disable 'ActionDispatch::DebugExceptions'
    # config.middleware.disable 'ActionDispatch::RemoteIp'
    # config.middleware.disable 'ActionDispatch::Reloader'
    # config.middleware.disable 'ActionDispatch::Callbacks'
    # config.middleware.disable 'ActiveRecord::Migration::CheckPending'
    # config.middleware.disable 'ActiveRecord::ConnectionAdapters::ConnectionManagement'
    # config.middleware.disable 'ActiveRecord::QueryCache'
    #config.middleware.disable 'ActionDispatch::Cookies'
    #config.middleware.disable 'ActionDispatch::Session::CookieStore'
    #config.middleware.disable 'ActionDispatch::Flash'
    # config.middleware.disable 'ActionDispatch::ParamsParser'
    # config.middleware.disable 'Rack::Head'
    # config.middleware.disable 'Rack::ConditionalGet'
    # config.middleware.disable 'Rack::ETag'

  end
end
