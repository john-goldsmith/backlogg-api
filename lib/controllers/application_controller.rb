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
          content_type :json
          response.headers["Access-Control-Allow-Headers"] = "Origin, X-Requested-With, Content-Type, Accept"
          response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, DELETE, OPTIONS"
          # response.headers["Content-Type"] = "application/x-www-form-urlencoded, application/json"
          response.headers["Access-Control-Allow-Origin"] = "*"

          # if request.method == :post
            begin
              params.merge! JSON.parse(request.env["rack.input"].read)
            rescue JSON::ParserError
              logger.error "Cannot parse request body."
            end
          # end

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