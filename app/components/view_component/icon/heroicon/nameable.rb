module ViewComponent
  module Icon
    module Heroicon
      # Supports icon names for selecting specific icons within a style
      module Nameable
        # @!visibility private
        def self.included(base)
          base.extend ClassMethods

          base.class_eval do
            attr_reader :name
          end
        end

        module ClassMethods # rubocop:disable Style/Documentation
          # Supports defining the array of canonical names of the icon in the subclass
          def canonical_names=(names_array)
            @canonical_names = names_array
          end

          # @return [Array<Symbol>] array of icon names recognized as components
          # @raise [UndefinedNamesError] if {canonical_names=} not used to define canonical names
          #   in the subclass
          def canonical_names
            @canonical_names || (raise UndefinedNamesError, required_method_call: "#{__method__}=")
          end

          # Returns a list of all recognized names (e.g., +:pencil+) for the specific style.
          #
          # @return [Array<Symbol>] list of recognized names
          def recognized_names
            @recognized_names ||= (canonical_names + synonym.keys).uniq.sort
          end

        private

          def synonym
            {
              destroy: :x,
              delete: :x,
              edit: :pencil,
              prev: :chevron_left,
              previous: :chevron_left,
              next: :chevron_right
            }
          end
        end

      private

        def canonical_name(name_argument)
          raise InvalidNameType unless name_argument.is_a?(Symbol)

          return name_argument if canonical_names.include?(name_argument)

          canon = synonym.fetch(name_argument, nil)
          return canon if canonical_names.include?(canon)

          raise UnrecognizedNameError.new(name: name_argument, reference_class: self.class)
        end

        # @return [Array<Symbol>] array of icon names recognized as components
        def canonical_names = self.class.__send__(:canonical_names)

        # @return [Hash<Symbol, Symbol>]
        def synonym = self.class.__send__(:synonym)
      end
    end
  end
end
