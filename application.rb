require "rubygems"
require "bundler"
require "json"
require "active_record"
require "sinatra"
require "sinatra/activerecord"
require "active_model_serializers"
# require "./config/environments"

APP_ROOT = settings.root
RACK_ENV = ENV['RACK_ENV'] || 'development'
CONFIG = YAML.load_file(File.join(APP_ROOT, 'config', 'config.yml'))
DB_CONFIG = YAML.load_file(File.join(APP_ROOT, 'config', 'database.yml'))

# Sinatra::Base.set(:environment, RACK_ENV)

Dir[File.dirname(__FILE__) + '/lib/controllers/*.rb'].each { |controller| require controller }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each { |model| require model }
Dir[File.dirname(__FILE__) + '/lib/serializers/*.rb'].each { |serializer| require serializer }

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development')
# set :database, ENV['DATABASE_URL'] || 'postgres://localhost/backlogg_development'