require 'rubygems'
require 'debugger'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

require 'dm-rails'
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'mysql://localhost/vruby_development.db')
