module Backlogg

  module Api

    module V1

      class ColumnsController < ApplicationController

        # Get all columns
        get '/' do
          json Column.all.map { |column| Backlogg::Serializers::ColumnSerializer.new(column) }
        end

        # Get a specific column
        get '/:id' do
          column = Column.find_by_id(params[:id])
          json Backlogg::Serializers::ColumnSerializer.new(column)
        end

        # Get all tasks for a specific column
        get '/:id/tasks' do
          column = Column.find_by_id(params[:id])
          json column.tasks.map { |task| Backlogg::Serializers::TaskSerializer.new(task) }
        end

        # Create a new column
        post '/' do

        end

        # Update a specific column
        put '/:id' do

        end

        # Delete a specific column
        delete '/:id' do

        end

      end

    end

  end

end