source 'https://rubygems.org'
ruby '2.4.2'

gem 'pg', '~> 0.21'
gem 'rails', '~> 5.1.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# http://haml.info/
gem 'haml'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

# https://github.com/bkeepers/dotenv
group :development, :test do
  gem 'dotenv-rails'
end

# Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# linting tools
group :development do

  # https://github.com/presidentbeef/brakeman
  gem 'brakeman', require: false

  # https://github.com/zmbush/coffeelint-ruby
  gem 'coffeelint', require: false

  # https://github.com/brigade/haml-lint
  gem 'haml_lint', require: false

  # https://github.com/troessner/reek
  gem 'reek', require: false

  # https://github.com/bbatsov/rubocop
  gem 'rubocop', require: false

  # https://github.com/brigade/scss-lint
  gem 'scss_lint', require: false

end


# testing tools
group :test do

  # https://github.com/teoljungberg/minitest-fail-fast
  gem 'minitest-fail-fast'

  # http://blowmage.com/minitest-rails/
  gem "minitest-rails"

  # https://github.com/kern/minitest-reporters
  gem 'minitest-reporters'

  # https://github.com/freerange/mocha
  # gem 'mocha'

  # https://github.com/grosser/single_test
  gem "single_test"

end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
