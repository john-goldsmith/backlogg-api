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

          status 200
          json SprintSerializer.new(sprint, root: :sprints)
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
          param :name, String, required: true
          param :project_id, Integer, required: true
          param :starts_at, String, required: true
          param :ends_at, String, required: true
          param :is_active, Boolean

          project = Project.find_by_id(params[:project_id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project
          params["project"] = project
          params.delete "project_id"

          sprint = Sprint.create(params)
          halt 400, {errors: sprint.errors.messages, message: "Error creating sprint"}.to_json unless sprint.valid?

          status 200
          json SprintSerializer.new(sprint)
        end

        # Update a specific sprint
        put '/:id' do
          param :id, Integer, required: true
          param :project_id, Integer
          param :is_active, Boolean

          sprint = Sprint.find_by_id(params[:id])
          halt 404, {errors: true, message: "Sprint not found"}.to_json unless sprint

          if params[:project_id]
            project = Project.find_by_id(params[:project_id])
            halt 404, {errors: true, message: "Project not found"}.to_json unless project
          end

          # TODO: Quick fix for mass assignment of ID warning
          params.delete :id

          if sprint.update(params)
            status 200
            json SprintSerializer.new(sprint)
          else
            halt 400, {errors: sprint.errors.messages, message: "Error updating sprint"}.to_json
          end
        end

        # Archive a specific sprint
        put '/:id/archive' do
          param :id, Integer, required: true

          sprint = Sprint.find_by_id(params[:id])
          halt 404, {errors: true, message: "Sprint not found"}.to_json unless sprint

          if sprint.update(is_active: false)
            status 200
            json SprintSerializer.new(sprint)
          else
            halt 400, {errors: sprint.errors.messages, message: "Error updating sprint"}.to_json
          end
        end

        # Unarchive a specific sprint
        put '/:id/unarchive' do
          param :id, Integer, required: true

          sprint = Sprint.find_by_id(params[:id])
          halt 404, {errors: true, message: "Sprint not found"}.to_json unless sprint

          if sprint.update(is_active: true)
            status 200
            json SprintSerializer.new(sprint)
          else
            halt 400, {errors: sprint.errors.messages, message: "Error updating sprint"}.to_json
          end
        end

        # Delete a specific sprint
        # TODO: What are the implications of this? Should dependent
        # resources also be deleted, or put in a special limbo state?
        delete '/:id' do
          param :id, Integer, required: true

          sprint = Sprint.find_by_id(params[:id])
          halt 404, {errors: true, message: "Sprint not found"}.to_json unless sprint

          status 200
          sprint.destroy
        end

      end

    end

  end

end