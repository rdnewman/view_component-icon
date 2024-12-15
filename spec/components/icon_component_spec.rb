module IconComponentRSpecHelpers
  # rubocop:disable Metrics/CollectionLiteralLength, Metrics/MethodLength, Naming/VariableNumber
  def self.canonical_names
    [:academic_cap, :adjustments_horizontal, :adjustments_vertical, :archive_box_arrow_down,
     :archive_box_x_mark, :archive_box, :arrow_down_circle, :arrow_down_left,
     :arrow_down_on_square_stack, :arrow_down_on_square, :arrow_down_right, :arrow_down_tray,
     :arrow_down, :arrow_left_circle, :arrow_left_end_on_rectangle, :arrow_left_start_on_rectangle,
     :arrow_left, :arrow_long_down, :arrow_long_left, :arrow_long_right, :arrow_long_up,
     :arrow_path_rounded_square, :arrow_path, :arrow_right_circle, :arrow_right_end_on_rectangle,
     :arrow_right_start_on_rectangle, :arrow_right, :arrow_top_right_on_square,
     :arrow_trending_down, :arrow_trending_up, :arrow_turn_down_left, :arrow_turn_down_right,
     :arrow_turn_left_down, :arrow_turn_left_up, :arrow_turn_right_down, :arrow_turn_right_up,
     :arrow_turn_up_left, :arrow_turn_up_right, :arrow_up_circle, :arrow_up_left,
     :arrow_up_on_square_stack, :arrow_up_on_square, :arrow_up_right, :arrow_up_tray, :arrow_up,
     :arrow_uturn_down, :arrow_uturn_left, :arrow_uturn_right, :arrow_uturn_up, :arrows_pointing_in,
     :arrows_pointing_out, :arrows_right_left, :arrows_up_down, :at_symbol, :backspace, :backward,
     :banknotes, :bars_2, :bars_3_bottom_left, :bars_3_bottom_right, :bars_3_center_left, :bars_3,
     :bars_4, :bars_arrow_down, :bars_arrow_up, :battery_0, :battery_100, :battery_50, :beaker,
     :bell_alert, :bell_slash, :bell_snooze, :bell, :bold,  :bolt_slash, :bolt, :book_open,
     :bookmark_slash, :bookmark_square, :bookmark, :briefcase, :bug_ant, :building_library,
     :building_office_2, :building_office, :building_storefront, :cake, :calculator,
     :calendar_date_range, :calendar_days, :calendar, :camera, :chart_bar_square, :chart_bar,
     :chart_pie, :chat_bubble_bottom_center_text, :chat_bubble_bottom_center,
     :chat_bubble_left_ellipsis, :chat_bubble_left_right, :chat_bubble_left,
     :chat_bubble_oval_left_ellipsis, :chat_bubble_oval_left, :check_badge, :check_circle, :check,
     :chevron_double_down, :chevron_double_left, :chevron_double_right, :chevron_double_up,
     :chevron_down, :chevron_left, :chevron_right, :chevron_up_down, :chevron_up, :circle_stack,
     :clipboard_document_check, :clipboard_document_list, :clipboard_document, :clipboard, :clock,
     :cloud_arrow_down, :cloud_arrow_up, :cloud, :code_bracket_square, :code_bracket, :cog_6_tooth,
     :cog_8_tooth, :cog, :command_line, :computer_desktop, :cpu_chip, :credit_card,
     :cube_transparent, :cube, :currency_bangladeshi, :currency_dollar, :currency_euro,
     :currency_pound, :currency_rupee, :currency_yen, :cursor_arrow_rays, :cursor_arrow_ripple,
     :device_phone_mobile, :device_tablet, :divide, :document_arrow_down, :document_arrow_up,
     :document_chart_bar, :document_check, :document_currency_bangladeshi,
     :document_currency_dollar, :document_currency_euro, :document_currency_pound,
     :document_currency_rupee, :document_currency_yen, :document_duplicate,
     :document_magnifying_glass, :document_minus, :document_plus, :document_text, :document,
     :ellipsis_horizontal_circle, :ellipsis_horizontal, :ellipsis_vertical, :envelope_open,
     :envelope, :equals, :exclamation_circle, :exclamation_triangle, :eye_dropper, :eye_slash, :eye,
     :face_frown, :face_smile, :film, :finger_print, :fire, :flag, :folder_arrow_down,
     :folder_minus, :folder_open, :folder_plus, :folder, :forward, :funnel, :gif, :gift_top, :gift,
     :globe_alt, :globe_americas, :globe_asia_australia, :globe_europe_africa, :h1, :h2, :h3,
     :hand_raised, :hand_thumb_down, :hand_thumb_up, :hashtag, :heart, :home_modern, :home,
     :identification, :inbox_arrow_down, :inbox_stack, :inbox, :information_circle, :italic, :key,
     :language, :lifebuoy, :light_bulb, :link_slash, :link, :list_bullet, :lock_closed, :lock_open,
     :magnifying_glass_circle, :magnifying_glass_minus, :magnifying_glass_plus, :magnifying_glass,
     :map_pin, :map, :megaphone, :microphone, :minus_circle, :minus, :moon, :musical_note,
     :newspaper, :no_symbol, :numbered_list, :paint_brush, :paper_airplane, :paper_clip,
     :pause_circle, :pause, :pencil_square, :pencil, :percent_badge, :phone_arrow_down_left,
     :phone_arrow_up_right, :phone_x_mark, :phone, :photo, :play_circle, :play_pause, :play,
     :plus_circle, :plus, :power, :presentation_chart_bar, :presentation_chart_line, :printer,
     :puzzle_piece, :qr_code, :question_mark_circle, :queue_list, :radio, :receipt_percent,
     :receipt_refund, :rectangle_group, :rectangle_stack, :rocket_launch, :rss, :scale, :scissors,
     :server_stack, :server, :share, :shield_check, :shield_exclamation, :shopping_bag,
     :shopping_cart, :signal_slash, :signal, :slash, :sparkles, :speaker_wave, :speaker_x_mark,
     :square_2_stack, :square_3_stack_3d, :squares_2x2, :squares_plus, :star, :stop_circle, :stop,
     :strikethrough, :sun, :swatch, :table_cells, :tag, :ticket, :trash, :trophy, :truck, :tv,
     :underline, :user_circle, :user_group, :user_minus, :user_plus, :user, :users, :variable,
     :video_camera_slash, :video_camera, :view_columns, :viewfinder_circle, :wallet, :wifi, :window,
     :wrench_screwdriver, :wrench, :x_circle, :x_mark].freeze
  end
  # rubocop:enable Metrics/CollectionLiteralLength, Metrics/MethodLength, Naming/VariableNumber

  def self.absent_micro_labels
    [:arrow_left_on_rectangle, :arrow_right_on_rectangle, :arrow_small_down, :arrow_small_left,
     :arrow_small_right, :arrow_small_up, :minus_small, :plus_small]
  end
end

RSpec.describe IconComponent, type: :component do
  describe "class" do
    it "lists icon sources supported" do
      expect(described_class.recognized_sources).to contain_exactly(:heroicon)
    end

    it "lists all recognized names from all supported icon sources" do
      expect(described_class.recognized_names).to eq complete_inventory
    end

    describe ".catalog" do
      it "returns a Hash" do
        expect(described_class.catalog).to be_a Hash
      end

      it "describes default size for icon style sets" do
        expect(described_class.catalog.dig(:heroicon, :solid, "default size")).to be_positive
      end

      it "describes names for icon style sets" do
        expect(described_class.catalog.dig(:heroicon, :solid, "supported names")).to be_an Array
      end
    end
  end

  it "assumes Heroicon as the default icon source" do
    component = described_class.new(name: :pencil)
    expect(component.source).to eq :heroicon
  end

  it "assumes :outline as the default style for the default source" do
    component = described_class.new(name: :pencil)
    expect(component.style).to eq :outline
  end

  it "has a default size" do
    component = described_class.new(name: :pencil)
    expect(component.size).to be_positive
  end

  it "raises an error if an unrecognized source is requested" do
    expect { described_class.new(source: :invalid, name: :pencil) }
      .to raise_error ViewComponent::Icon::InvalidSourceError, /source "invalid" requested/
  end

  it "raises an error if an unrecognized style for the source is requested" do
    expect { described_class.new(source: :heroicon, style: :invalid, name: :pencil) }
      .to raise_error(
        ViewComponent::Icon::InvalidSourceStyleError,
        /style "invalid" is unrecognized/
      )
  end

  it "raises an error if an unrecognized name is requested" do
    expect { described_class.new(style: :outline, name: :whatever) }
      .to raise_error(
        ViewComponent::Icon::Heroicon::UnrecognizedNameError, /"whatever" is not recognized/
      )
  end

  it "raises an error if an invalid size requested" do
    expect { described_class.new(name: :pencil, size: "six") }
      .to raise_error(
        ViewComponent::Icon::Heroicon::InvalidSizeArgumentError, /Invalid size argument/
      )
  end

  describe "defined" do
    shared_examples "an icon" do |icon|
      describe "and" do
        it "renders" do
pp icon
pp icon.__send__(:component).__send__(:icon_class).name.underscore
          html = render_inline(icon).to_html
          expect(html).not_to be_nil
        end

        xit "has a svg node with a path" do
          html = render_inline(icon).to_html
          expect(html).to have_tag("svg") { with_tag "path" }
        end

        xit "has a d value" do
          html = render_inline(icon).to_html
          svg_path = Nokogiri::HTML5.fragment(html).at("svg/path")
          attributes = svg_path&.attributes
          expect(attributes&.fetch("d")&.value).not_to be_empty
        end
      end
    end

    styles = [:mini] # [:micro, :mini, :outline, :solid]
    names = IconComponentRSpecHelpers.canonical_names
    all_combinations =
      (styles - [:micro]).product(names) +
      [:micro].product(names - IconComponentRSpecHelpers.absent_micro_labels).compact.uniq

    all_combinations.each do |(style, name)|
      # the actual example group for the specific combination
      describe "with style :#{style} and name :#{name}", :aggregate_failures do
        it_behaves_like "an icon", described_class.new(name:, style:)
      end
    end
  end

  def complete_inventory
    {
      heroicon: {
        micro: (
          IconComponentRSpecHelpers.canonical_names -
            IconComponentRSpecHelpers.absent_micro_labels).compact.uniq,
        mini: IconComponentRSpecHelpers.canonical_names,
        solid: IconComponentRSpecHelpers.canonical_names,
        outline: IconComponentRSpecHelpers.canonical_names
      }
    }
  end
end
