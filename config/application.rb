require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Twitalk
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.log_level = :info
  end
end
