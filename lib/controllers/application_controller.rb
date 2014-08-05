module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        register Sinatra::ActiveRecordExtension

        before do
          content_type :json
        end

      end

    end

  end

end