source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'bcrypt', '3.1.13'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2.3'
# Use Puma as the app server
gem 'puma',                       '5.2.2'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker',                  '5.2.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks',                 '5.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',                   '2.10.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt',                     '3.1.13'

# Use Active Storage variant
gem 'image_processing',           '1.9.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap',                   '1.7.2', require: false

gem 'mini_magick',                '4.9.5'
gem 'active_storage_validations', '0.8.9'
gem 'faker',                      '2.11.0'
gem 'will_paginate',              '3.3.0'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
   gem 'capybara',                 '3.35.3'
   gem 'selenium-webdriver',       '3.142.7'
   gem 'rails-controller-testing', '1.0.5'
   gem 'webdrivers',               '4.6.0'
   gem 'minitest-reporters',       '1.3.8'
   gem 'minitest',                 '5.11.3'
   gem 'guard-minitest',           '2.4.6'
   gem 'guard',                    '2.16.2'
   gem 'rexml'

end

group :production do
    gem 'aws-sdk-s3', '1.87.0', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
