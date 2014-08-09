module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        # register Sinatra::ActiveRecordExtension # Is this needed?
        helpers Sinatra::Param
        include Backlogg::Models
        include Backlogg::Serializers

        before do
          content_type :json
        end

        not_found do
          halt 404, {errors: {}, message: "URL not found"}.to_json
        end

      end

    end

  end

end