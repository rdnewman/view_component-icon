module ViewComponent
  module Icon
    class << self
      # Current configuration
      #
      # @return [Configuration]
      attr_accessor :configuration

      # @!visibility private
      def initialize
        self.configuration = Configuration.new.deep_freeze
      end

      # Allows configuration for default icon use
      #
      # @yieldparam config [Configuration] configuration to be initialized
      # @return [Configuration] resulting configuration
      # @example
      #   ViewComponent::Icon.configure do |config|
      #     config.style = :outline
      #     config.source = :heroicon
      #   end
      # @note repeated calls to configuration will result in a completely new configuration without
      #   any previously defined values considered, so defaults are used for unspecified values
      def configure
        self.configuration = Configuration.new
        yield(configuration)
        configuration.deep_freeze
        configuration
      end
    end

    # Stores configuration for use of the gem
    class Configuration
      # Source to assume if configuration doesn't explicitly set a default source
      DEFAULT_SOURCE = :heroicon

      # Style to assume if configuration doesn't explicitly set a default style
      DEFAULT_STYLE = :outline

      # @todo Make these more generic than hardcoded; we're duplicating information and should be
      #   to asks the coded component classes this information
      class << self
        def valid_source?(candidate)
          # Only source so far supported is Heroicons
          [
            :heroicon
          ].include? candidate
        end

        def valid_style?(candidate)
          # Only styles so far supported are solid and outline from Heroicons
          [
            :solid,
            :outline
          ].include? candidate
        end
      end

      # Default source of icons when creating IconComponent instances
      # @return [Symbol]
      attr_reader :source

      # Default style from the icon source when creating IconComponent instances
      # @return [Symbol]
      attr_reader :style

      def initialize
        @source = DEFAULT_SOURCE
        @style = DEFAULT_STYLE
      end

      # @param value [Symbol] the original source of icons to be used
      # @raise [InvalidSourceError] if the given value is not a recognized source
      def source=(value)
        raise InvalidSourceError unless self.class.valid_source?(value)

        @source = value
      end

      # @param value [Symbol] the style of icons to be used
      # @raise [InvalidSourceStyleError] if the given value is not a recognized style for the source
      def style=(value)
        raise InvalidSourceStyleError unless self.class.valid_style?(value)

        @style = value
      end

      # @return [Hash] configuration values as a Hash
      # @example
      #   config.to_h
      #   => {source: :heroicon, style: :solid}
      def to_h
        { source: @source, style: @style }.freeze
      end

      # Freezes the configuration instance to prevent further modification
      #
      # @return [Configuration] self
      def deep_freeze
        @source.freeze
        @style.freeze
        freeze

        self
      end
    end
    private_constant :Configuration
  end
end
