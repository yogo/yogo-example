# Standard requirements for Bundler management
require 'rubygems'
require 'bundler/setup'

# Load the bundler gemset
Bundler.require(:default)

# Load the Application Version
load File.join(File.dirname(__FILE__), 'VERSION')

# Load the application
require './example'

# Run the application
run ExampleApp