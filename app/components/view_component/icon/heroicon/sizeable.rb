module ViewComponent
  module Icon
    module Heroicon
      # Supports sizing for Heroicon components
      module Sizeable
        # @!visibility private
        def self.included(base)
          base.extend ClassMethods

          base.class_eval do
            attr_reader :size
          end
        end

        module ClassMethods # rubocop:disable Style/Documentation
          # Supports defining the default size of the icon in the subclass
          def default_size=(size_value)
            @default_size ||= size_value # rubocop:disable Naming/MemoizedInstanceVariableName
          end

          # @return [Integer] default size of icon
          # @raise [UndefinedDefaultSizeError] if {default_size=} was not used to
          #   define the default size in the class including this module
          def default_size
            @default_size || (raise UndefinedDefaultSizeError, __method__)
          end
        end

      private

        # Specifies relation of units used to CSS rem units.
        # Based on Tailwind CSS size units
        SCALE_FACTOR = 0.25
        private_constant :SCALE_FACTOR

        # Scales the icon size based on the provided argument
        # @param size_argument [Integer, Symbol] size units (4 = 1 rem) or :default
        def scale(size_argument)
          SCALE_FACTOR * (validate_size(size_argument) == :default ? default_size : size_argument)
        end

        # Validates given size argument
        # @param size_argument [Integer, Symbol] size argument to be validated
        # @raise [InvalidSizeArgumentError] if size argument is not a positive integer
        def validate_size(size_argument)
          return size_argument if size_argument == :default
          return size_argument if size_argument.is_a?(Integer) && size_argument.positive?

          raise InvalidSizeArgumentError
        end

        # @return [Integer] default size of icon
        def default_size = self.class.__send__(:default_size)
      end
    end
  end
end
