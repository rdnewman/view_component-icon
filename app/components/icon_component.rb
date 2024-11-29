# ViewComponent for any icon supported by this +view_component-icon+ gem.
#
# This is a facade class to supply supported icons. It is the only component intended to be
# invoked by any view templates in the client application.
#
# @!parse
#   class IconComponent < ApplicationComponent; end
class IconComponent < ViewComponent::Icon.component_base_class
  class << self
    # Entire catalog of all source sets and styles with their supported names and default sizes.
    # Similar to +#recognized_names+, but with more description.
    # @return [Hash<Symbol, Hash>] Hash of all available icons
    def catalog
      @catalog ||= recognized_sources.index_with { |source| source_classes.fetch(source).catalog }
    end

    # Lists all available sources for icon sets
    # @return [Array<Symbol>] symbols for specifying sources
    def recognized_sources
      @recognized_sources ||= source_classes.keys
    end

    # Lists all supported names across all available icon sources and styles.
    # Similar to +#catalog+, but simpler.
    # @return [Array<Symbol>] symbols for specifying icon names by source and style
    def recognized_names
      @recognized_names ||= recognized_sources.index_with do |source|
        source_classes.fetch(source).recognized_names
      end
    end

  private

    def source_classes
      @source_classes ||= {
        heroicon: ::ViewComponent::Icon::Heroicon
      }
    end
  end

  # The source where this component's icon is from
  # @return [Symbol]
  attr_reader :source

  # # The underlying ViewComponent instance from the source's set
  # # @return [ViewComponent]
  # attr_reader :sourced_component

  # @!attribute [r] style
  #   The style of the icon in this component
  #   @return [Symbol]
  delegate :style, to: :component

  # @!attribute [r] name
  #   The name of the icon in this component
  #   @return [Symbol]
  delegate :name, to: :component

  # @!attribute [r] size
  #   The size (in rem units) this component will be rendered at
  #   @return [Numeric]
  delegate :size, to: :component

  # @param name [Symbol] name of the specific icon to render (e.g., :pencil)
  # @param source [Symbol] source where the icon originated from (e.g., :heroicon)
  # @param size [Integer] size, in rem units, the icon is to be rendered at;
  #   default may vary by the style (depending on how the source may have implemented them)
  # @param style [Symbol] style group the icon is to be from (e.g., :outline)
  # @example
  #   # Renders a pencil icon from the configured default source and style
  #   render(IconComponent.new(:pencil)
  #
  #   # Renders a graphic X (usually to destroy something) from the default source but explicitly
  #   # from the solid icons group
  #   render(IconComponent.new(:delete, style: :solid)
  def initialize(
    name:,
    source: ::ViewComponent::Icon.configuration.source,
    size: :default,
    style: ::ViewComponent::Icon.configuration.style
  )
    super

    source_class = source_classes.fetch(source)
    @source = source
    @component = source_class.fetch(style:, name:, size:)
  rescue KeyError
    raise ::ViewComponent::Icon::InvalidSourceError.new(source:)
  end

  # Renders the icon as an SVG tag (likely similar to original source).
  # @return [String] SVG tag
  def to_svg
    Nokogiri.XML(component.render_in(view_context), &:noblanks).to_html
  end
  alias_method :to_html, :to_svg

private

  attr_reader :component

  def source_classes = self.class.__send__(:source_classes)

  def view_context
    @view_context ||= ActionView::Base.new(ActionView::LookupContext.new([]), {}, [])
  end
end
