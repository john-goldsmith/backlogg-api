module Backlogg

  module Api

    module V1

      class CommentsController < ApplicationController

        # Get all comments
        get '/' do
          Comment.all.map { |comment| Backlogg::Serializers::CommentSerializer.new(comment) }.to_json
        end

        # Get a specific comment
        get '/:id' do
          comment = Comment.find_by_id(params[:id])
          Backlogg::Serializers::CommentSerializer.new(comment).to_json
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