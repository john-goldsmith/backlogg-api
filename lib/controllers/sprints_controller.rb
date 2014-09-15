module Backlogg

  module Api

    module V1

      class SprintsController < ApplicationController

        # Get all sprints
        # get '/' do
        #   json Sprint.all.map { |sprint| SprintSerializer.new(sprint) }
        # end

        # Get a specific sprint
        get '/:id' do
          sprint = Sprint.find_by_id(params[:id])
          json SprintSerializer.new(sprint)
        end

        # Get all columns for a specific sprint
        get '/:id/columns' do
          param :id, Integer, required: true
          param :include_tasks, Boolean

          sprint = Sprint.find_by_id(params[:id])
          halt 404, {errors: true, message: "Sprint not found"}.to_json unless sprint

          if params[:include_tasks]
            json sprint.columns.map { |column| ColumnSerializer.new(column) }
          else
            json sprint.columns.map { |column| ColumnSerializer.new(column) }
          end

          # status 200
        end

        # Get all tasks for a specific sprint
        get '/:id/tasks' do
          sprint = Sprint.find_by_id(params[:id])
          json sprint.tasks.map { |task| TaskSerializer.new(task) }
        end

        # Get all comments for a specific sprint
        get '/:id/comments' do
          sprint = Sprint.find_by_id(params[:id])
          json sprint.comments.map { |comment| CommentSerializer.new(comment) }
        end

        # Create a new sprint
        post '/' do

        end

        # Update a specific sprint
        put '/:id' do

        end

        # Delete a specific sprint
        delete '/:id' do

        end

      end

    end

  end

end