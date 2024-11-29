source "https://rubygems.org"

gemspec
# gem "view_component", path: "../view_component"

group :development do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rails-accessibility", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false

  gem "yard", require: false
end

group :test do
  gem "combustion"
  # gem "ruby-prof", require: false
  gem "simplecov", require: false
end

group :development, :test do
  gem "bundler"

  gem "rspec-rails"

  gem "rspec-html-matchers"
end
