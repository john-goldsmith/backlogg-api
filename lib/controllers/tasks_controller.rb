module Backlogg

  module Api

    module V1

      class TasksController < ApplicationController

        # Get all tasks
        get '/' do
          json Task.all.map { |task| TaskSerializer.new(task) }
        end

        # Get a specific task
        get '/:id' do
          task = Task.find_by_id(params[:id])
          json TaskSerializer.new(task)
        end

        # Get all comments for a specific task
        get '/:id/comments' do
          task = Task.find_by_id(params[:id])
          json task.comments.map { |comment| CommentSerializer.new(comment) }
        end

        # Get all comments for a specific task
        get '/:id/related' do
          task = Task.find_by_id(params[:id])
          related_tasks = task.related_tasks.pluck(:related_task_id)
          json Task.find(related_tasks).map { |related_task| TaskSerializer.new(related_task) }
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