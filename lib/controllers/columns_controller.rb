module Backlogg

  module Api

    module V1

      class ColumnsController < ApplicationController

        # Get all columns
        get '/' do
          Column.all.map { |column| Backlogg::Serializers::ColumnSerializer.new(column) }.to_json
        end

        # Get a specific column
        get '/:id' do
          column = Column.find_by_id(params[:id])
          Backlogg::Serializers::ColumnSerializer.new(column).to_json
        end

        # Get all tasks for a specific column
        get '/:id/tasks' do
          column = Column.find_by_id(params[:id])
          column.tasks.map { |task| Backlogg::Serializers::TaskSerializer.new(task) }.to_json
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