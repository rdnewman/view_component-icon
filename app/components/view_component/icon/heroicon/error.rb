module ViewComponent
  module Icon
    module Heroicon
      # Base error class for all Heroicon-specific errors. Usually not directly raised.
      class Error < ::ViewComponent::Icon::Error; end

      # Error raised when supplied icon name is not of a valid type
      class InvalidNameTypeError < Error
        def initialize(msg = "Name must be a symbol")
          super
        end
      end

      # Error raised when an invalid size is specified for an icon component
      class InvalidSizeArgumentError < Error
        def initialize(msg = "Invalid size argument. Size must be an integer greater than zero.")
          super
        end
      end

      # Error raised when the component class does not use +default_size=+ to define a default size
      class UndefinedDefaultSizeError < Error
        def initialize(msg = nil, method: nil)
          if msg
            super
          else
            message = if method
                        "Component class must define a default size using #{method}."
                      else
                        "Component class must define a default size."
                      end

            super(message)
          end
        end
      end

      # Error raised when the component class has not defined canonical names
      class UndefinedNamesError < Error
        def initialize(msg = nil, method: nil)
          if msg
            super
          else
            message = if method
                        "Component class must define names using #{method}."
                      else
                        "Component class must define names."
                      end

            super(message)
          end
        end
      end

      # Error raised when the component class has not defined what style it represents
      class UndefinedStyleError < Error
        def initialize(msg = nil, method: nil)
          if msg
            super
          else
            message = if method
                        "Component class must define its icon style using #{method}."
                      else
                        "Component class must define its icon style."
                      end

            super(message)
          end
        end
      end

      # Error raised when there is no icon with that name for that source and style
      class UnrecognizedNameError < Error
        def initialize(msg = nil, name:, reference_class: nil)
          if msg
            super(msg)
          else
            message = if name.present?
                        "Name \"#{name}\" is not recognized."
                      else
                        "Name cannot be blank."
                      end

            if reference_class.respond_to?(:recognized_names)
              names = reference_class.recognized_names
              available_names = "#{names[0..-2].map { |l| ":#{l}" }.join(', ')} or :#{names[-1]}"
              message += " Available names: #{available_names}."
            end

            super(message)
          end
        end
      end
    end
  end
end
