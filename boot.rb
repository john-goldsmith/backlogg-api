require "rubygems"
require "bundler"
require "json"
require "active_record"
require "active_model_serializers"
require 'active_support'
require "sinatra" # Should this be "sinatra/base"?
require "sinatra/param"
require "sinatra/activerecord"
require "sinatra/config_file"
require "sinatra/json"
require "sinatra/respond_with"
require "sinatra-initializers"
require "./config/environments"

APP_ROOT = settings.root
RACK_ENV = ENV['RACK_ENV'] || 'development'
CONFIG = YAML.load_file(File.join(APP_ROOT, 'config', 'config.yml'))
# DATABASE_URL=postgres://postgres@localhost/backlogg_development # Previously in .env
# DB_CONFIG = YAML.load_file(File.join(APP_ROOT, 'config', 'database.yml'))

# set :environment, RACK_ENV

Dir[File.dirname(__FILE__) + '/lib/concerns/*.rb'].each { |concern| require concern }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each { |model| require model }
Dir[File.dirname(__FILE__) + '/lib/serializers/*.rb'].each { |serializer| require serializer }
Dir[File.dirname(__FILE__) + '/lib/controllers/*.rb'].each { |controller| require controller }

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development')
# set :database, ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development'