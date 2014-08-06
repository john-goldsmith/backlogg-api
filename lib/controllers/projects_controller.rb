module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        # Get all projects
        get '/' do
          projects = Project.all
          puts "@"*88
          puts projects.inspect

          # projects.each { |project| Backlogg::Serializers::ProjectSerializer.new(project) }
          puts Backlogg::Serializers::ProjectSerializer.new(projects).inspect
          puts "@"*88
        end

        # Get a specific project
        get '/:id' do
          Project.find_by_id(params[:id]).to_json
          # project = Project.find_by_id(params[:id]).to_json
          # render Backlogg::Serializers::ProjectSerializer.new(project)
        end

        # Get all tasks for a specific project
        get '/:id/columns' do
          Project.find_by_id(params[:id]).columns.to_json
        end

        # Get all tasks for a specific project
        get '/:id/tasks' do
          project_tasks = Project.find_by_id(params[:id]).tasks
          project_tasks.each { |project_task| Backlogg::Serializers::ProjectSerializer.new(project_task) }
          # Backlogg::Serializers::ProjectSerializer.new(project_tasks)
        end

        # Get all comments for a specific project
        get '/:id/comments' do
          Project.find_by_id(params[:id]).comments.to_json
        end

        # get '/:id/columns/:id'
        # get '/:id/columns/:column_id/tasks'
        # get '/:id/columns/:column_id/tasks/:task_id'
        # get '/:id/columns/:column_id/tasks/:task_id/comments'
        # get '/:id/columns/:column_id/tasks/:task_id/comments/:comment_id'

        # Create a new project
        post '/' do

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