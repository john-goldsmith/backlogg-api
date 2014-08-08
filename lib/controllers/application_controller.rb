module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        # register Sinatra::ActiveRecordExtension # Is this needed?
        include Backlogg::Models

        before do
          content_type :json
        end

        not_found do
          halt 404, { error: 'URL not found' }.to_json
        end

      end

    end

  end

end