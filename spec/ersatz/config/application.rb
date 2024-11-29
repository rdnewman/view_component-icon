require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)
require "view_component"
require "view_component/icon"

module Ersatz
  # Top level application class.
  class Application < Rails::Application
    config.load_defaults Rails::VERSION::STRING.to_f
    config.eager_load = false
    config.autoload_lib(ignore: %w[assets tasks])
    config.generators.system_tests = nil
  end
end
