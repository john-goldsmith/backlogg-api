module Backlogg

  module Api

    module V1

      class CommentsController < ApplicationController

        # Get all comments
        # get '/' do
        #   json Comment.all.map { |comment| CommentSerializer.new(comment) }
        # end

        # Get a specific comment
        get '/:id' do
          comment = Comment.find_by_id(params[:id])
          status 200
          json CommentSerializer.new(comment, root: :comment)
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