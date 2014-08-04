require 'rubygems'
require 'bundler'
require 'json'
require 'active_record'
require 'sinatra'

Sinatra::Base.set(:environment, ENV["RACK_ENV"] || "development")

Dir[File.dirname(__FILE__) + '/lib/controllers/*.rb'].each { |controller| require controller }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each { |model| require model }

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development')
# set :database, ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development'