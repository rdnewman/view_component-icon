module ViewComponent
  module Icon
    module Heroicon
      # Provides the wrapper +<svg>+ node with common arguments for individual
      # solid-style Heroicon icon path components.
      #
      # @see https://heroicons.com/solid
      # @api private
      class SolidIconComponent < Base
        self.style = :solid

        self.default_size = 5

        self.canonical_names = [
          :chevron_left,
          :chevron_right,
          :pencil,
          :qrcode,
          :question_mark_circle,
          :x
        ]
      end
    end
  end
end
