source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read("./.ruby-version").strip

### Application
gem "rails", "~> 7.0.4"
gem "puma", "~> 5.0"

### DB
gem "pg", "~> 1.1"
gem "pg_search"
gem "activerecord-postgres_enum"
gem "redis", "~> 4.0"
gem "discard"
gem "hypershield"
gem "online_migrations"

### Frontend
gem "active_link_to"
gem "better_html"
gem "cssbundling-rails"
gem "jsbundling-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "jbuilder"

### View helpers
gem "simple_form"
gem "local_time"
gem "gretel"
gem "view_component"
gem "lookbook"

### Authentication and Authorization
gem "devise"
gem "devise-pwned_password"
gem "omniauth"
gem "omniauth-rails_csrf_protection"
gem "omniauth-google-oauth2", "~> 1.1.1"
gem "rolify"
gem "pretender"
gem "pundit"

### SEO
gem "meta-tags"
gem "sitemap_generator"
gem "friendly_id"

### Analytics
gem "ahoy_email"
gem "ahoy_matey"
gem "blazer"

### Encryption and Security
gem "authtrail"
gem "rack-attack"

### Communications
gem "mailkick"
gem "noticed"
gem "postmark"
gem "postmark-rails"

### I18n
gem "devise-i18n"
gem "i18n-tasks"
gem "rails-i18n"

### Caching
gem "identity_cache"
gem "cityhash"
gem "dalli"

### Geolocation
gem "geocoder"

### Background Processing
gem "good_job"

### File management
gem "active_storage_validations"
gem "aws-sdk-s3", require: false
gem "image_processing", "~> 1.2"

### Monitoring
gem "appsignal"
gem "rails_performance"
gem "pghero"

### Tools
gem "active_interaction", "~> 4.1"
gem "bootsnap", require: false
gem "lefthook"
gem "rails_semantic_logger"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "pagy"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "standard"

  gem "bullet"
  gem "capybara"
  gem "capybara-screenshot"
  gem "cypress-on-rails", "~> 1.0"

  gem "database_cleaner"
  gem "database_cleaner-active_record"
  gem "factory_bot_rails"
  gem "faker"
  gem "pundit-matchers", "~> 1.7.0"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "simplecov"
end

group :development do
  gem "annotate"
  gem "amazing_print"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "erb_lint", require: false
  gem "hotwire-livereload", "~> 1.1"
  gem "letter_opener_web", "~> 2.0"
  gem "rails_best_practices"
  gem "pry-byebug"
  gem "rails-erd"

  gem "web-console"
  gem "rack-mini-profiler"
end
