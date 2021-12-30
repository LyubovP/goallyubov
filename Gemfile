source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.4'
gem 'jwt'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem "slim-rails"
gem 'bootstrap', '~> 5.1.0'
gem 'simple_form'
gem 'devise', '~> 4.8'
gem 'bootsnap', '>= 1.4.4', require: false
gem "omniauth-rails_csrf_protection"
gem 'omniauth-google-oauth2'
gem "font-awesome-sass", "~> 5.15.1"
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem "aws-sdk-s3", require: false
gem 'ransack'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end

group :test do
  gem 'shoulda-matchers', '~> 5.0'
  gem "simplecov", require: false
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'annotate'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
