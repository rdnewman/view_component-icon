module ViewComponent
  module Icon
    # Namespace supporting all Heroicon icon components
    #
    # @see https://heroicons.com/
    # @api private
    module Heroicon
      class << self
        # Acquire a component sourced from the Heroicon icon set with the
        # requested style, name, and size
        # @return [ViewComponent] a component containing the requested Heroicon icon
        # @raise [ViewComponent::Icon::InvalidSourceStyleError] if the requested style is invalid
        # @raise [ViewComponent::Icon::Heroicon::UnrecognizedNameError]
        #   if the requested name is not available
        # @raise [ViewComponent::Icon::Heroicon::InvalidSizeArgumentError]
        #   if the requested size is not a positive integer or +:default+
        def fetch(name:, size:, style:)
          style_classes.fetch(style).new(name:, size:)
        rescue KeyError
          source = name.to_sym
          raise ::ViewComponent::Icon::InvalidSourceStyleError.new(source:, style:)
        end

        # All styles available from the Heroicon icon source
        # @return [Array<Symbol>] style names as symbols
        def recognized_styles
          @recognized_styles ||= style_classes.keys
        end

        # All names available for each style supported in the Heroicon icon source
        # @return [Array<Symbol>] style names as symbols
        def recognized_names
          @recognized_names ||= style_classes.keys.index_with do |style|
            style_classes.fetch(style).recognized_names
          end
        end

        # Entire catalog of Heroicon styles with their supported names and default sizes.
        # Similar to #recognized_names, but with more description.
        # @return [Hash<Symbol, Hash<Symbol, Array<Symbol>>>] Hash of all available icons
        def catalog
          @catalog ||= style_classes.keys.index_with do |style|
            style_class = style_classes.fetch(style)
            {
              "supported names" => style_class.recognized_names,
              "default size" => style_class.default_size
            }
          end
        end

      private

        def style_classes
          @style_classes ||= {
            outline: ::ViewComponent::Icon::Heroicon::OutlineIconComponent,
            solid: ::ViewComponent::Icon::Heroicon::SolidIconComponent
          }
        end
      end
    end
  end
end
