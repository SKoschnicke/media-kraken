source 'http://rubygems.org'

gem 'rails'

group :production do
  gem 'pg'
  gem 'uglifier'
  gem 'therubyracer'
end

# Use unicorn as the web server
gem 'unicorn'


# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
gem 'haml-rails'
gem 'therubyracer'              # needed for less
gem 'less-rails-bootstrap'
gem 'carrierwave'               # file uploads
gem 'rack-raw-upload'
gem "fog", "~> 1.3.1"           # Amazon S3
gem 'jquery-rails'
gem 'formtastic'
gem 'rmagick'
#gem 'mini_magick'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'sqlite3'
end
