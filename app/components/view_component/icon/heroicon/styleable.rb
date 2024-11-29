module ViewComponent
  module Icon
    module Heroicon
      # Supports declaring style of the icon group within the Heroicon set
      module Styleable
        # @!visibility private
        def self.included(base)
          base.extend ClassMethods
        end

        module ClassMethods # rubocop:disable Style/Documentation
          # Supports defining the style of the icon in the subclass
          def style=(value)
            @style ||= value # rubocop:disable Naming/MemoizedInstanceVariableName
          end

          # @return [Symbol] style of icon
          # @raise [UndefinedStyleError] if {style=} was not used to define the style
          #   in the subclass
          def style
            @style || (raise UndefinedStyleError, required_method_call: "#{__method__}=")
          end
        end

        # @return [Symbol] style of icon
        def style = self.class.__send__(:style)
      end
    end
  end
end
