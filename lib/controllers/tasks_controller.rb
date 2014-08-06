module Backlogg

  module Api

    module V1

      class TasksController < ApplicationController

        # Get all tasks
        get '/' do
          Task.all.to_json
        end

        # Get a specific task
        get '/:id' do
          Task.find_by_id(params[:id]).to_json
        end

        # Get all comments for a specific task
        get '/:id/comments' do
          Task.find_by_id(params[:id]).comments.to_json
        end

        # Create a new task
        post '/' do

        end

        # Update a specific task
        put '/:id' do

        end

        # Delete a specific task
        delete '/:id' do

        end

      end

    end

  end

end