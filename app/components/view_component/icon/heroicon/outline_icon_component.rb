module ViewComponent
  module Icon
    module Heroicon
      # Provides the wrapper +<svg>+ node with common arguments for individual
      # outline-style Heroicon icon path components.
      #
      # @see https://heroicons.com/outline
      # @api private
      class OutlineIconComponent < Base
        self.style = :outline

        self.default_size = 6

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
