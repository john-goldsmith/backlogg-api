module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        # get '/:project_id/columns/:id'
        # get '/:project_id/columns/:column_id/tasks'
        # get '/:project_id/columns/:column_id/tasks/:task_id'
        # get '/:project_id/columns/:column_id/tasks/:task_id/comments'
        # get '/:project_id/columns/:column_id/tasks/:task_id/comments/:comment_id'

        # Get all projects
        get '/' do
          json Project.all.map { |project| Backlogg::Serializers::ProjectSerializer.new(project) }
        end

        # Get a specific project
        get '/:id' do
          project = Project.find_by_id(params[:id])
          json Backlogg::Serializers::ProjectSerializer.new(project)
        end

        # Get all tasks for a specific project
        get '/:id/columns' do
          project = Project.find_by_id(params[:id])
          json project.columns.map { |column| Backlogg::Serializers::ColumnSerializer.new(column) }
        end

        # Get all tasks for a specific project
        get '/:id/tasks' do
          project = Project.find_by_id(params[:id])
          json project.tasks.map { |task| Backlogg::Serializers::TaskSerializer.new(task) }
        end

        # Get all comments for a specific project
        get '/:id/comments' do
          project = Project.find_by_id(params[:id])
          json project.comments.map { |comment| Backlogg::Serializers::CommentSerializer.new(comment) }
        end

        # Create a new project
        post '/' do
          # ... if has_params?([:name])
          if params[:project]
            project = Project.create(params[:project])
            if project
              json Backlogg::Serializers::ProjectSerializer.new(project)
            else
              {error: true, message: "Error saving", validation_messages: errors.messages}.to_json
            end
          else
            {error: true, message: "Invalid parameters"}.to_json
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