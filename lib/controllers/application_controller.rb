module Backlogg

  module Api

    module V1

      class ApplicationController < Sinatra::Base

        before do
          content_type :json
        end

      end

    end

  end

end