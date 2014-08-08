module Backlogg

  module Api

    module V1

      class UtilitiesController < ApplicationController

        get '/ping' do
          "pong!"
        end

      end

    end

  end

end