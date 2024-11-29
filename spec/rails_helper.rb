require "simplecov"
SimpleCov.start do
  nocov_token "simplecov-ignore"
  add_filter "/spec/"
end

require "spec_helper"

ENV["RAILS_ENV"] ||= "test"

# Load dummy Rails app
# This implicitly takes care of requiring the needed Rails elements
require File.expand_path("./ersatz/config/environment", __dir__)

require "rspec/rails"

[
  "spec/support/**/*.rb",
  "lib/**/*.rb"
].each do |dir|
  Dir[dir].each { |f| require File.expand_path(f) }
end

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
