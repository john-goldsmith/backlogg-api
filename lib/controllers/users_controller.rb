module Backlogg

  module Api

    module V1

      class UsersController < ApplicationController

        # Get all users
        get '/' do
          json User.all.map { |user| Backlogg::Serializers::UserSerializer.new(user) }
        end

        # Get a specific user
        get '/:id' do
          user = User.find_by_id(params[:id])
          json Backlogg::Serializers::UserSerializer.new(user)
        end

        # Get all comments for a specific user
        get '/:id/comments' do
          user = User.find_by_id(params[:id])
          json user.comments.map { |comment| Backlogg::Serializers::CommentSerializer.new(comment) }
        end

        # Get all projects authored by a specific user
        get '/:id/projects' do
          user = User.find_by_id(params[:id])
          json user.projects.map { |project| Backlogg::Serializers::ProjectSerializer.new(project) }
        end

        # Create a new user
        post '/' do

        end

        # Update a specific user
        put '/:id' do

        end

        # Delete a specific user
        delete '/:id' do

        end

      end

    end

  end

end