module ViewComponent
  module Icon
    # Base class for all specialized icon components and normalizes superclass ancestry.
    # This class provides no additional functionality.
    # @!parse
    #   class BaseComponent < ::ApplicationComponent; end
    class BaseComponent < component_base_class; end
  end
end
