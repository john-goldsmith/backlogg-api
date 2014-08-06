module Backlogg

  module Api

    module V1

      class CommentsController < ApplicationController

        # Get all comments
        get '/' do
          Comment.all.to_json
        end

        # Get a specific comment
        get '/:id' do
          Comment.find_by_id(params[:id])
        end

        # Create a new comment
        post '/' do

        end

        # Update a specific comment
        put '/:id' do

        end

        # Delete a specific comment
        delete '/:id' do

        end

      end

    end

  end

end