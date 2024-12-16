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
          :academic_cap, :adjustments_horizontal, :adjustments_vertical, :archive_box,
          :archive_box_arrow_down, :archive_box_x_mark, :arrow_down, :arrow_down_circle,
          :arrow_down_left, :arrow_down_on_square, :arrow_down_on_square_stack,
          :arrow_down_right, :arrow_down_tray, :arrow_left, :arrow_left_circle,
          :arrow_left_end_on_rectangle, :arrow_left_on_rectangle,
          :arrow_left_start_on_rectangle, :arrow_long_down, :arrow_long_left,
          :arrow_long_right, :arrow_long_up, :arrow_path, :arrow_path_rounded_square,
          :arrow_right, :arrow_right_circle, :arrow_right_end_on_rectangle,
          :arrow_right_on_rectangle, :arrow_right_start_on_rectangle, :arrow_small_down,
          :arrow_small_left, :arrow_small_right, :arrow_small_up,
          :arrow_top_right_on_square, :arrow_trending_down, :arrow_trending_up,
          :arrow_turn_down_left, :arrow_turn_down_right, :arrow_turn_left_down,
          :arrow_turn_left_up, :arrow_turn_right_down, :arrow_turn_right_up,
          :arrow_turn_up_left, :arrow_turn_up_right, :arrow_up, :arrow_up_circle,
          :arrow_up_left, :arrow_up_on_square, :arrow_up_on_square_stack,
          :arrow_up_right, :arrow_up_tray, :arrow_uturn_down, :arrow_uturn_left,
          :arrow_uturn_right, :arrow_uturn_up, :arrows_pointing_in,
          :arrows_pointing_out, :arrows_right_left, :arrows_up_down, :at_symbol,
          :backspace, :backward, :banknotes, :bars_2, :bars_3, :bars_3_bottom_left,
          :bars_3_bottom_right, :bars_3_center_left, :bars_4, :bars_arrow_down,
          :bars_arrow_up, :battery_0, :battery_100, :battery_50, :beaker, :bell,
          :bell_alert, :bell_slash, :bell_snooze, :bold, :bolt, :bolt_slash, :book_open,
          :bookmark, :bookmark_slash, :bookmark_square, :briefcase, :bug_ant,
          :building_library, :building_office, :building_office_2, :building_storefront,
          :cake, :calculator, :calendar, :calendar_date_range, :calendar_days, :camera,
          :chart_bar, :chart_bar_square, :chart_pie, :chat_bubble_bottom_center,
          :chat_bubble_bottom_center_text, :chat_bubble_left,
          :chat_bubble_left_ellipsis, :chat_bubble_left_right, :chat_bubble_oval_left,
          :chat_bubble_oval_left_ellipsis, :check, :check_badge, :check_circle,
          :chevron_double_down, :chevron_double_left, :chevron_double_right,
          :chevron_double_up, :chevron_down, :chevron_left, :chevron_right, :chevron_up,
          :chevron_up_down, :circle_stack, :clipboard, :clipboard_document,
          :clipboard_document_check, :clipboard_document_list, :clock, :cloud,
          :cloud_arrow_down, :cloud_arrow_up, :code_bracket, :code_bracket_square, :cog,
          :cog_6_tooth, :cog_8_tooth, :command_line, :computer_desktop, :cpu_chip,
          :credit_card, :cube, :cube_transparent, :currency_bangladeshi,
          :currency_dollar, :currency_euro, :currency_pound, :currency_rupee,
          :currency_yen, :cursor_arrow_rays, :cursor_arrow_ripple, :device_phone_mobile,
          :device_tablet, :divide, :document, :document_arrow_down, :document_arrow_up,
          :document_chart_bar, :document_check, :document_currency_bangladeshi,
          :document_currency_dollar, :document_currency_euro, :document_currency_pound,
          :document_currency_rupee, :document_currency_yen, :document_duplicate,
          :document_magnifying_glass, :document_minus, :document_plus, :document_text,
          :ellipsis_horizontal, :ellipsis_horizontal_circle, :ellipsis_vertical,
          :envelope, :envelope_open, :equals, :exclamation_circle,
          :exclamation_triangle, :eye, :eye_dropper, :eye_slash, :face_frown,
          :face_smile, :film, :finger_print, :fire, :flag, :folder, :folder_arrow_down,
          :folder_minus, :folder_open, :folder_plus, :forward, :funnel, :gif, :gift,
          :gift_top, :globe_alt, :globe_americas, :globe_asia_australia,
          :globe_europe_africa, :h1, :h2, :h3, :hand_raised, :hand_thumb_down,
          :hand_thumb_up, :hashtag, :heart, :home, :home_modern, :identification,
          :inbox, :inbox_arrow_down, :inbox_stack, :information_circle, :italic, :key,
          :language, :lifebuoy, :light_bulb, :link, :link_slash, :list_bullet,
          :lock_closed, :lock_open, :magnifying_glass, :magnifying_glass_circle,
          :magnifying_glass_minus, :magnifying_glass_plus, :map, :map_pin, :megaphone,
          :microphone, :minus, :minus_circle, :minus_small, :moon, :musical_note,
          :newspaper, :no_symbol, :numbered_list, :paint_brush, :paper_airplane,
          :paper_clip, :pause, :pause_circle, :pencil, :pencil_square, :percent_badge,
          :phone, :phone_arrow_down_left, :phone_arrow_up_right, :phone_x_mark, :photo,
          :play, :play_circle, :play_pause, :plus, :plus_circle, :plus_small, :power,
          :presentation_chart_bar, :presentation_chart_line, :printer, :puzzle_piece,
          :qr_code, :question_mark_circle, :queue_list, :radio, :receipt_percent,
          :receipt_refund, :rectangle_group, :rectangle_stack, :rocket_launch, :rss,
          :scale, :scissors, :server, :server_stack, :share, :shield_check,
          :shield_exclamation, :shopping_bag, :shopping_cart, :signal, :signal_slash,
          :slash, :sparkles, :speaker_wave, :speaker_x_mark, :square_2_stack,
          :square_3_stack_3d, :squares_2x2, :squares_plus, :star, :stop, :stop_circle,
          :strikethrough, :sun, :swatch, :table_cells, :tag, :ticket, :trash, :trophy,
          :truck, :tv, :underline, :user, :user_circle, :user_group, :user_minus,
          :user_plus, :users, :variable, :video_camera, :video_camera_slash,
          :view_columns, :viewfinder_circle, :wallet, :wifi, :window, :wrench,
          :wrench_screwdriver, :x_circle, :x_mark
        ]

        # self.alternate_names = {
        #   bars2: bars_2,
        #   bars3: bars_3,
        #   bars3_bottom_left: bars_3_bottom_left,
        #   bars3_bottom_right: bars_3_bottom_right,
        #   bars3_center_left: bars_3_center_left,
        #   bars4: bars_4,
        #   battery0: battery_0,
        #   battery100: battery_100,
        #   battery50: battery_50,
        #   building_office2: building_office_2,
        #   cog6_tooth: cog_6_tooth,
        #   cog8_tooth: cog_8_tooth,
        #   square2_stack: square_2_stack,
        #   square3_stack3d: square_3_stack_3d,
        #   x_mark: x_mark
        # }
      end
    end
  end
end
