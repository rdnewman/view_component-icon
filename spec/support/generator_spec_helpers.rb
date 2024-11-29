# Helpers for testing generators
module GeneratorSpecHelpers
  def destination_path(spec_source_file)
    raise ArgumentError, "spec_source_file cannot be blank" if spec_source_file.blank?

    spec_dir = File.dirname(spec_source_file)
    spec_name = File.basename(spec_source_file, ".*")

    Rails.root.join(spec_dir, spec_name, "tmp").to_s
  end
  module_function :destination_path
end
