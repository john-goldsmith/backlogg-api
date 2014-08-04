module Backlogg

  module Api

    module V1

      class ColumnsController < ApplicationController

        get '/' do
          # Get all columns
        end

        get '/:id' do
          # Get specific column
        end

        post '/' do
          # Create new column
        end

        put '/:id' do
          # Update specific column
        end

        delete '/:id' do
          # Delete specific column
        end

      end

    end

  end

end