RSpec.describe ViewComponent::Icon::Heroicon do
  it "can provide a list of styles it supports" do
    expect(described_class.recognized_styles).to contain_exactly(:outline, :solid)
  end

  describe "#fetch" do
    it "raises an error if an unsupported style is specified" do
      expect { described_class.fetch(style: :invalid, name: :whatever, size: :default) }
        .to raise_error(
          ViewComponent::Icon::InvalidSourceStyleError,
          /style "invalid" is unrecognized/
        )
    end

    it "raises error if an unsupported name is requested" do
      expect { described_class.fetch(style: :outline, name: :whatever, size: :default) }
        .to raise_error(
          ViewComponent::Icon::Heroicon::UnrecognizedNameError, /"whatever" is not recognized/
        )
    end

    it "raises an error if an invalid size requested" do
      expect { described_class.fetch(style: :outline, name: :pencil, size: "six") }
        .to raise_error(
          ViewComponent::Icon::Heroicon::InvalidSizeArgumentError, /Invalid size argument/
        )
    end

    it "returns requested component" do
      component = described_class.fetch(style: :outline, name: :pencil, size: :default)
      expect(component).to be_a ViewComponent::Icon::Heroicon::OutlineIconComponent
    end
  end
end
