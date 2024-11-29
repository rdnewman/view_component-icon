require "rails/generators"

# Name spaces for generators that support Heroicon components
module Heroicon
  # Generates a Heroicon component
  class ComponentGenerator < Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)

    check_class_collision suffix: "Component"

    # Generates the necessary files for a new Heroicon component, with both outline and solid styles
    def create_heroicon_component_files
      apply_templates(style: :outline)
      apply_templates(style: :solid)
    end

    # hook_for :template_engine, :test_framework, :helper do |generator|
    #   invoke generator, [remove_possible_suffix(name), actions]
    # end

  private

    def component_dir
      @component_dir ||= File.join("app", "components", "heroicon")
    end

    def apply_templates(style:)
      style_text = style.to_s

      template(
        "#{style_text}_heroicon_component.rb",
        File.join(component_dir, style_text, "#{file_name}_component.rb")
      )

      template(
        "heroicon_component.html",
        File.join(component_dir, style_text, "#{file_name}_component.html")
      )
    end

    # def remove_possible_suffix(name)
    #   name.sub(/_?component$/i, '')
    # end
  end
end
