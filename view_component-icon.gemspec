lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/view_component/icon/version"

Gem::Specification.new do |spec|
  spec.name          = "view_component-icon"
  spec.version       = ViewComponent::Icon::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Richard Newman"]
  spec.email         = ["richard@newmanworks.com"]

  spec.summary       = "Icon compoonents for ViewComponent"
  spec.description   = <<~DESCRIPTION.strip.freeze
    Icon components ready to render with ViewComponent
  DESCRIPTION
  spec.homepage      = "https://github.com/rdnewman/view_component-icon"
  spec.licenses      = ["MIT"]

  spec.metadata = {
    "source_code_uri" => "https://github.com/rdnewman/view_component-icon",
    "bug_tracker_uri" => "https://github.com/rdnewman/view_component-icon/issues",
    "changelog_uri" => "https://github.com/rdnewman/view_component-icon/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://www.rubydoc.info/gems/view_component-icon",
    "rubygems_mfa_required" => "true"
  }

  spec.required_ruby_version = Gem::Requirement.new(">= 3.2.1")

  spec.add_dependency "actionview", [">= 7.1", "< 8.0"]
  spec.add_dependency "activesupport", [">= 7.1", "< 8.0"]
  spec.add_dependency "railties", [">= 7.1", "< 8.0"]
  spec.add_dependency "view_component", ["~> 3.0", "< 4.0"]
  spec.add_dependency "zeitwerk", ["~> 2.5"]

  spec.files = Dir[
    "lib/**/*.{rb,html.erb,rb.tt}",
    "app/**/*.{rb,html.erb}",
    "LICENSE",
    "README.md",
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "SECURITY.md"
  ]
  spec.require_paths = ["lib"]

  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
end
