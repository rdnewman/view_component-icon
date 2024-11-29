require "view_component"
require "zeitwerk"

# Namespace already established by ViewComponent; used to simplify client use
module ViewComponent
  # Module for gem support
  # @api private
  module Icon; end

  # Lambda requiring every file found under a glob pattern
  involve = ->(ref) { Dir.glob(ref).each { |file| require file } }

  # Load all top level support code files
  dir = Pathname(__dir__)
  involve[dir.join("icon", "*.rb")]

  # Load all components from the gem's app/components directory
  dir = dir.join "..", "..", "app", "components"
  involve[dir.join("*.rb")]

  dir = dir.join "view_component", "icon"
  involve[dir.join("*.rb")]
  involve[dir.join("*", "**", "*.rb")]
end
