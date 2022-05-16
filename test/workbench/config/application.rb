require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Workbench
  class Application < Rails::Application
    config.load_defaults 7.0

    config.view_component.preview_paths << Rails.root.join("../../test/components/previews").to_s
    config.view_component.view_component_path = "../../app/components"
  end
end
