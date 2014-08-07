module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        # Get all projects
        get '/' do
          Project.all.map { |project| Backlogg::Serializers::ProjectSerializer.new(project) }.to_json
        end

        # Get a specific project
        get '/:id' do
          project = Project.find_by_id(params[:id])
          Backlogg::Serializers::ProjectSerializer.new(project).to_json
        end

        # Get all tasks for a specific project
        get '/:id/columns' do
          project = Project.find_by_id(params[:id])
          project.columns.map { |column| Backlogg::Serializers::ColumnSerializer.new(column) }.to_json
        end

        # Get all tasks for a specific project
        get '/:id/tasks' do
          project = Project.find_by_id(params[:id])
          project.tasks.map { |task| Backlogg::Serializers::TaskSerializer.new(task) }.to_json
        end

        # Get all comments for a specific project
        get '/:id/comments' do
          project = Project.find_by_id(params[:id])
          project.comments.map { |comment| Backlogg::Serializers::CommentSerializer.new(comment) }.to_json
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