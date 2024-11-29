module ViewComponent
  # Namespace module to isolate support in this gem
  module Icon
    # Allows an {ApplicationComponent} class to be the base class
    # (instead of assuming {ViewComponent}::{Base}).
    #
    # When using ViewComponent (in the client Rails app), developers sometimes define a class
    # named +ApplicationComponent+ that they will have their components inherit from (instead of
    # directly inheriting from +ViewComponent::Base+).
    #
    # When used, +ApplicationComponent+ typically inherits from +ViewComponent::Base+ itself,
    # allowing additional customization for the application (in a similiar way that
    # +ApplicationRecord+ or +ApplicationController+ does for their counterparts).
    #
    # For documentation purposes, we assume that +ApplicationComponent+ may exist and
    # used as the base class (or an ancestor) for all icon components.
    #
    # If +ApplicationComponent+ is not defined in the client Rails app (which is the default), this
    # gem assumes +ViewComponent::Base+ as the superclass.
    #
    # Because this gem depends on the +view_component+ gem that defines +ViewComponent::Base+,
    # should +ViewComponent::Base+ also not be defined, an error will be raised.
    #
    # @see https://viewcomponent.org/
    # @see https://www.rubydoc.info/gems/actionview-component/ViewComponent/Base
    #
    # @return [Class] The superclass to use for all icon components.
    # @raise [MissingViewComponentGemError] If the ViewComponent gem is not defined.
    def self.component_base_class
      if defined?(::ApplicationComponent)
        ::ApplicationComponent
      elsif defined?(::ViewComponent::Base)
        ::ViewComponent::Base
      else
        raise MissingViewComponentGemError
      end
    end
  end
end
