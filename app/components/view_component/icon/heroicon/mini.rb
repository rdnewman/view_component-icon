module ViewComponent
  module Icon
    module Heroicon
      # Namespace for all specialized HeroIcon icon components with the +:mini+ style
      #
      # @see https://heroicons.com/mini
      # @api private
      module Mini
        # @!visibility private
        # Lazily define icon components when needed
        # @note This method must be explicitly written inline for the +view_component+ gem to
        #   properly tie the component views to this because it depends on where the class is
        #   defined (via +caller_locations+) for component view template to be found as a
        #   sidecar file
        def const_missing(name)
          return unless name.end_with?("Component")

          const_set(name, Class.new(::ViewComponent::Icon::BaseComponent))
        end
        module_function :const_missing
      end
    end
  end
end
