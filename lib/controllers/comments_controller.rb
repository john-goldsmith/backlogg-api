module Backlogg

  module Api

    module V1

      class CommentsController < ApplicationController

        get '/' do
          # Get all comments
        end

        get '/:id' do
          # Get specific comment
        end

        post '/' do
          # Create new comment
        end

        put '/:id' do
          # Update specific comment
        end

        delete '/:id' do
          # Delete specific comment
        end

      end

    end

  end

end