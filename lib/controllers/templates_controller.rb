module Backlogg

  module Api

    module V1

      class TemplatesController < ApplicationController

        # Get all templates
        get '/' do
          Template.all.to_json
        end

        # Get a specific template
        get '/:id' do
          Template.find_by_id(params[:id]).to_json
        end

        # Get all columns for a specific template
        get '/:id/columns' do
          Template.find_by_id(params[:id]).template_columns.to_json
        end

        # Create a new template
        post '/' do

        end

        # Update a specific template
        put '/:id' do

        end

        # Delete a specific template
        delete '/:id' do
          Template.find_by_id(params[:id]).destroy
        end

      end

    end

  end

end