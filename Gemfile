source "https://rubygems.org"

ruby "2.0.0"

# web
gem "rails", "4.0.0"

# data
gem "pg",     "~> 0.17.0"
gem "redis",  "~> 3.0.5"

# assets
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "therubyracer", platforms: :ruby
gem "jquery-rails"

gem "font-awesome-sass",          "~> 3.2.1.4"
gem "bootstrap-sass-rails",       "~> 2.3.2.1"
gem "sass-rails",                 "~> 4.0.0"


# views
gem "haml", "~> 4.0.3"
gem "jbuilder", "~> 1.2"
gem "split",    "~> 0.6.6"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", require: false
end

# Use ActiveModel has_secure_password
# gem "bcrypt-ruby", "~> 3.0.0"

group :production do
  gem "puma",           "~> 2.6.0"
  gem "rails_12factor", "~> 0.0.2"
end

group :development, :test do
  gem "better_errors", "~> 1.0.1"
  gem "pry-rails", "~> 0.3.2"
  gem "pry-doc", "~> 0.4.6"
end

# Use debugger
# gem "debugger", group: [:development, :test]
