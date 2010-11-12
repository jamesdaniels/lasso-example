# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
 
 	config.gem 'sqlite3-ruby', :version => '1.2.5', :lib => 'sqlite3'
  config.gem 'authlogic',    :version => '~> 2.1.6'
  config.gem 'lasso',        :version => '~> 0.3.0'
  
  config.time_zone = 'UTC'
  
end
