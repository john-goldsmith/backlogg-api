module Backlogg

  module Api

    module V1

      class TasksController < ApplicationController

        # Get all tasks
        get '/' do
          json Task.all.map { |task| Backlogg::Serializers::TaskSerializer.new(task) }
        end

        # Get a specific task
        get '/:id' do
          task = Task.find_by_id(params[:id])
          json Backlogg::Serializers::TaskSerializer.new(task)
        end

        # Get all comments for a specific task
        get '/:id/comments' do
          task = Task.find_by_id(params[:id])
          json task.comments.map { |comment| Backlogg::Serializers::CommentSerializer.new(comment) }
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