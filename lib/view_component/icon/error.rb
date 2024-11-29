module ViewComponent
  module Icon
    # Base error for all custom errors raised for the gem itself
    class Error < StandardError; end

    # Error raised when an invalid or unknown source of icons is specified
    class InvalidSourceError < Error
      def initialize(source:)
        super("Unrecognized icon source \"#{source}\" requested.")
      end
    end

    # Error raised when an invalid or unknown style is specified for an icon source
    class InvalidSourceStyleError < Error
      def initialize(source:, style:)
        super("From the icon source \"#{source}\", style \"#{style}\" is unrecognized.")
      end
    end

    # Error raised when the required gem +view_component+ is not installed
    class MissingViewComponentGemError < Error
      def initialize(message = "Unable to detect that the required gem ViewComponent is installed.")
        super
      end
    end
  end
end
