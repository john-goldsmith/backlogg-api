module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        # register Sinatra::ActiveRecordExtension # Is this needed?
        include Backlogg::Models

        before do
          content_type :json
        end

      end

    end

  end

end