module Backlogg

  module Api

    module V1

      class ColumnsController < ApplicationController

        # Get all columns
        get '/' do
          Column.all.to_json
        end

        # Get a specific column
        get '/:id' do
          Column.find_by_id(params[:id])
        end

        # Get all tasks for a specific column
        get '/:id/tasks' do
          Column.find_by_id(params[:id]).tasks.to_json
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