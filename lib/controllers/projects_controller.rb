module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        # Get all projects
        get '/' do
          param :include_inactive, Boolean

          if params[:include_inactive]
            json Project.all.map { |project| ProjectSerializer.new(project) }
          else
            json Project.where(is_active: true).map { |project| ProjectSerializer.new(project) }
          end
        end

        # Get a specific project
        get '/:id' do
          param :id, Integer, required: true

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          status 200
          json ProjectSerializer.new(project)
        end

        # Get all sprints for a specific project
        get '/:id/sprints' do
          param :id, Integer, required: true

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          status 200
          json project.sprints.map { |sprint| SprintSerializer.new(sprint) }
        end

        # Get all columns for a specific project
        get '/:id/columns' do
          param :id, Integer, required: true

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          status 200
          json project.columns.map { |column| ColumnSerializer.new(column) }
        end

        # Get all tasks for a specific project
        get '/:id/tasks' do
          param :id, Integer, required: true

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          status 200
          json project.tasks.map { |task| TaskSerializer.new(task) }
        end

        # Create a new project
        post '/' do
          params = ActiveSupport::HashWithIndifferentAccess.new(JSON.parse(request.body.read))

          # param :name, String, required: true
          # param :user_id, Integer, required: true
          # param :code, String, required: true, min_length: 2, max_length: 2
          # param :is_active, Boolean

          user = User.find_by_id(params[:user_id])
          halt 404, {errors: true, message: "User not found"}.to_json unless user
          params["user"] = user
          params.delete "user_id"

          project = Project.create(params)
          halt 400, {errors: project.errors.messages, message: "Error creating project"}.to_json unless project.valid?

          status 200
          json ProjectSerializer.new(project)
        end

        # Update a specific project
        put '/:id' do
          param :id, Integer, required: true
          param :user_id, Integer
          param :code, String, min_length: 2, max_length: 2
          param :is_active, Boolean

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          if params[:user_id]
            user = User.find_by_id(params[:user_id])
            halt 404, {errors: true, message: "User not found"}.to_json unless user
          end

          if project.update(params)
            status 200
            json ProjectSerializer.new(project)
          else
            halt 400, {errors: project.errors.messages, message: "Error updating project"}.to_json
          end
        end

        # Delete a specific project
        delete '/:id' do
          param :id, Integer, required: true

          project = Project.find_by_id(params[:id])
          halt 404, {errors: true, message: "Project not found"}.to_json unless project

          status 200
          project.destroy
        end

      end

    end

  end

end