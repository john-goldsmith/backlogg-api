module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        register Sinatra::ActiveRecordExtension # Is this needed?
        register Sinatra::Initializers
        helpers Sinatra::Param
        include Backlogg::Models
        include Backlogg::Serializers

        before do
          response.headers["Access-Control-Allow-Headers"] = "Origin, X-Requested-With, Content-Type, Accept"
          response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, DELETE, OPTIONS"
          response.headers["Content-Type"] = "application/x-www-form-urlencoded, application/json"
          response.headers["Access-Control-Allow-Origin"] = "*"
        end

        # not_found do
        #   halt 404, {errors: {}, message: "URL not found"}.to_json
        # end

        get '/ping' do
          "pong!"
        end

        options '*' do
          status 200
        end

      end

    end

  end

end