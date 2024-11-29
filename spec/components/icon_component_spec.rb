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
          html = render_inline(icon).to_html
          expect(html).not_to be_nil
        end

        it "has a svg node with a path" do
          html = render_inline(icon).to_html
          expect(html).to have_tag("svg") { with_tag "path" }
        end

        it "has a d value" do
          html = render_inline(icon).to_html
          svg_path = Nokogiri::HTML5.fragment(html).at("svg/path")
          attributes = svg_path&.attributes
          expect(attributes&.fetch("d")&.value).not_to be_empty
        end
      end
    end

    styles = [:outline, :solid]
    names = [
      :chevron_left,
      :chevron_right,
      :delete,
      :destroy,
      :edit,
      :pencil,
      :qrcode,
      :question_mark_circle,
      :x
    ]
    all_combinations = styles.product(names)

    all_combinations.each do |(style, name)|
      # the actual example group for the specific combination
      describe "with style :#{style} and name :#{name}", :aggregate_failures do
        it_behaves_like "an icon", described_class.new(name:, style:)
      end
    end
  end

  def complete_inventory # rubocop:disable Metrics/MethodLength
    {
      heroicon: {
        solid: [
          :chevron_left,
          :chevron_right,
          :delete,
          :destroy,
          :edit,
          :next,
          :pencil,
          :prev,
          :previous,
          :qrcode,
          :question_mark_circle,
          :x
        ],
        outline: [
          :chevron_left,
          :chevron_right,
          :delete,
          :destroy,
          :edit,
          :next,
          :pencil,
          :prev,
          :previous,
          :qrcode,
          :question_mark_circle,
          :x
        ]
      }
    }
  end
end
