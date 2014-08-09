module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        # get '/:project_id/sprints
        # get '/:project_id/sprints/:sprint_id
        # get '/:project_id/sprints/:sprint_id/columns
        # get '/:project_id/sprints/:sprint_id/columns/:column_id
        # get '/:project_id/sprints/:sprint_id/columns/:column_id/tasks
        # get '/:project_id/sprints/:sprint_id/columns/:column_id/tasks/:task_id
        # get '/:project_id/sprints/:sprint_id/columns/:column_id/tasks/:task_id/comments

        # Get all projects
        get '/' do
          json Project.all.map { |project| ProjectSerializer.new(project) }
        end

        # Get a specific project
        get '/:id' do
          project = Project.find_by_id(params[:id])
          json ProjectSerializer.new(project)
        end

        # Get all sprints for a specific project
        get '/:id/sprints' do
          project = Project.find_by_id(params[:id])
          json project.sprints.map { |sprint| SprintSerializer.new(sprint) }
        end

        # Create a new project
        post '/' do
          param :name, String, required: true
          param :code, String, required: true, min_length: 2, max_length: 2

          project = Project.create(name: params[:name], code: params[:code])
          if project
            json ProjectSerializer.new(project)
          else
            {error: true, message: "Error saving", validation_messages: errors.messages}.to_json
          end
        end

        # Update a specific project
        put '/:id' do

        end

        # Delete a specific project
        delete '/:id' do

        end

      end

    end

  end

end