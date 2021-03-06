source 'https://rubygems.org'

path 'components' do
  gem 'persistence', '0.0.1'
  gem 'jobs', '0.0.1'
  gem 'authentication', '0.0.1'
  gem 'authorization', '0.0.1'
  gem 'api', '0.0.1'
  gem 'web_style', '0.0.1'
  gem 'sample_data', '0.0.1'
  gem 'search', '0.0.1'
  gem 'cms', '0.0.1'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# Note: Even though the main application is not using Jbuilder, it needs to be declared here so that
# rails middleware gets initialized in correct sequence. You will still need to add add_dependency clause
# to engine's gemspec file.

gem 'jbuilder'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# respond_with and the class-level respond_to methods have been extracted to the responders gem.
# To use them, simply add gem 'responders', '~> 2.0' to your Gemfile
gem 'responders', '~> 2.0'

# Use jdbcsqlite3 as the database for Active Record
# gem 'activerecord-jdbcsqlite3-adapter'

# Devise is a flexible authentication solution for Rails based on Warden
# https://github.com/plataformatec/devise
gem 'devise'


platforms :jruby do
  # Had to lock net-ssh to 2.9.2 version. Latest version 3.1 requires Ruby 2.0
  gem 'net-ssh', '2.9.2'
  gem 'jruby-openssl', '0.9.6', :require => false
  gem 'activerecord-jdbcpostgresql-adapter', '1.3.7'
  # Use puma as the app server. See https://github.com/puma/puma
  gem 'puma'
  # Warbler is a gem to make a Java jar or war file out of any Ruby, Rails or Rack application.
  # Warbler provides a minimal, flexible, Ruby-like way to bundle up all of your application
  # files for deployment to a Java environment.
  gem 'warbler'
end

platforms :ruby do

  gem 'activerecord-postgresql-adapter'
  # Use puma as the app server. See https://github.com/puma/puma
  gem 'puma'

  group :development, :test do
    # Access an IRB console on exception pages or by using <%= console %> in views
    # web-console gem depends on bindng_of_caller gem that does not support JRuby
    # Please see http://stackoverflow.com/questions/33210259/bundle-install-error-with-jruby
    gem 'pry-rails'
    gem 'web-console', '~> 2.0'
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    # gem 'byebug'
    # A gem for distributing the v8 runtime libraries and headers in both source and binary form.
    gem 'libv8'
    # Do not build on docker host
    gem 'therubyracer'

  end

end

# gem 'sunspot_rails'
# gem 'sunspot_solr', :group => :development

# Use logging gem as a replacement of rails default logger
# See https://github.com/mcmire/logging-rails
gem 'logging-rails', :require => 'logging/rails'

# NOTE: You will need to install the `logging-email` gem to use this appender
# with loggging-2.0. The email appender was extracted into a plugin gem. That
# is the reason this code is commented out.
# See https://github.com/twp/logging-email
gem 'logging-email'

# Use Redis as a Rails cache store. See https://github.com/redis-store/redis-rails
# See https://github.com/redis/redis-rb to learn more about Redis
gem 'redis-rails'

# Process monitoring tool. Inspired from Bluepill and God. Requires Ruby(MRI) >= 1.9.3-p194. Uses Celluloid and Celluloid::IO.
# See https://github.com/kostya/eye
# gem 'eye'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# sass-rails need to be availalbe in production for asset recompilation
gem 'sass-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Transparently encrypt ActiveRecord, Mongoid, and MongoMapper attributes. Encrypt passwords in configuration files. Encrypt entire files at rest.
# See http://rocketjob.github.io/symmetric-encryption/index.html
gem 'symmetric-encryption'

# Multitenancy for Rails and ActiveRecord
# Apartment provides tools to help you deal with multiple tenants in your Rails application.
# If you need to have certain data sequestered based on account or company, but still allow
# some data to exist in a common tenant, Apartment can help.
# See https://github.com/influitive/apartment
gem 'apartment'

# Rack::Cors provides support for Cross-Origin Resource Sharing (CORS) for Rack compatible web applications.
# See: https://github.com/cyu/rack-cors
gem 'rack-cors', :require => 'rack/cors'

# Simple, secure token based authentication for Rails. See https://github.com/lynndylanhurley/devise_token_auth
# Needed for authticating REST API requests.
# gem 'devise_token_auth'

# This gem provides the extracted Token Authenticatable module of devise. See: https://github.com/baschtl/devise-token_authenticatable
gem 'devise-token_authenticatable'

# This gem is a drop in solution for styling HTML emails with CSS without having to do the hard work yourself.
# See https://github.com/fphilipe/premailer-rails
gem 'premailer-rails'

# Gives letter_opener an interface for browsing sent emails. Allows you to read sent email in a web browser. Handy for testing HTML emails without actually sending the email.
# See https://github.com/fgrehm/letter_opener_web
gem 'letter_opener_web', '~> 1.2.0'

group :development do
  # Quiet Assets turns off the Rails asset pipeline log. This means that it suppresses messages in your development log
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'quiet_assets'
  gem 'pry-rails'
  gem 'sdoc', '~> 0.4.0'
  gem 'annotate'
  # Less has dependency on rubyracer in development env. Temp. commenting out for build to pass on docker host
  gem 'less-rails'

  # Use Capistrano for deployment
  gem 'capistrano-rails'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  #gem 'progress_bar'

  # The Bullet gem is designed to help you increase your application's performance by reducing the number of queries it makes.
  # It will watch your queries while you develop your application and notify you when you should add eager loading (N+1 queries),
  # when you're using eager loading that isn't necessary and when you should use counter cache
  # See https://github.com/flyerhzm/bullet
  gem 'bullet'

  # Brakeman is a security scanner for Ruby on Rails applications. See http://brakemanscanner.org/docs/introduction/
  gem 'brakeman', :require => false

  gem 'rails_best_practices'



end



# group :test, :development do
#  gem 'rspec-rails'
#
# end
