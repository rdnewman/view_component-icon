require "English"
require_relative "nameable"
require_relative "sizeable"
require_relative "styleable"

module ViewComponent
  module Icon
    module Heroicon
      # Heroicon's base class to be the superclass for each style's base class. Provides
      # common functionality for all Heroicon icon component styles.
      #
      # @see https://heroicons.com/
      # @api private
      class Base < ::ViewComponent::Icon::BaseComponent
        include Nameable
        include Sizeable
        include Styleable

        def initialize(name:, size:)
          super

          @name = canonical_name(name)
          @icon_class = icon_class
          @size = scale(size)
          # the class is responsible for providing the style (see Styleable module)
        end

      private

        # @return [Class] class for the specific icon to be used
        def icon_class
          class_name = "#{self.class.name.deconstantize}::" \
                       "#{style.to_s.camelize}::" \
                       "#{name.to_s.camelize}Component"
          class_name.constantize
        rescue NameError => e
          summary = e.message.split($INPUT_RECORD_SEPARATOR).first
          raise "name \"#{name}\" is unsupported (#{summary})"
        end
      end
    end
  end
end
