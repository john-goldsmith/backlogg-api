module Backlogg

  module Api

    module V1

      class UsersController < ApplicationController

        # Get all users
        get '/' do
          User.all.to_json
        end

        # Get a specific user
        get '/:id' do
          User.find_by_id(params[:id]).to_json
        end

        # Get all comments for a specific user
        get '/:id/comments' do
          User.find_by_id(params[:id]).comments.to_json
        end

        # Get all projects authored by a specific user
        get '/:id/projects' do
          User.find_by_id(params[:id]).projects.to_json
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