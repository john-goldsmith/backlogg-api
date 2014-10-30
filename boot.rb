require "dotenv"
Dotenv.load

require "rack"
require "rack/contrib"
require "rubygems"
require "bundler"
require "json"
require "active_record"
require "active_model_serializers"
require "active_support"
require "protected_attributes"
require "sinatra/base"
require "sinatra/param"
require "sinatra/activerecord"
require "sinatra/config_file"
require "sinatra/json"
require "sinatra/respond_with"
require "sinatra-initializers"
# require "sinatra/strong_params"
require "./config/environments"

module Backlogg
  APP_ROOT = File.dirname(__FILE__)
  CONFIG = YAML.load_file(File.join(APP_ROOT, "config", "config.yml"))
  # RACK_ENV = ENV["RACK_ENV"] || "development"
  # DB_CONFIG = YAML.load_file(File.join(APP_ROOT, "config", "database.yml"))
end

# Dir[Backlogg::APP_ROOT + "/config/initializers/*.rb"].each { |initializer| require initializer }
Dir[Backlogg::APP_ROOT + "/lib/concerns/*.rb"].each { |concern| require concern }
Dir[Backlogg::APP_ROOT + "/lib/models/*.rb"].each { |model| require model }
Dir[Backlogg::APP_ROOT + "/lib/serializers/*.rb"].each { |serializer| require serializer }
Dir[Backlogg::APP_ROOT + "/lib/controllers/*.rb"].each { |controller| require controller }