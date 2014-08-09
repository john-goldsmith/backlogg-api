module Backlogg

  module Api

    module V1

      class TemplatesController < ApplicationController

        # Get all templates
        get '/' do
          json Template.all.map { |template| TemplateSerializer.new(template) }
        end

        # Get a specific template
        get '/:id' do
          template = Template.find_by_id(params[:id])
          json TemplateSerializer.new(template)
        end

        # Get all columns for a specific template
        get '/:id/columns' do
          template = Template.find_by_id(params[:id])
          json template.columns.map { |column| ColumnSerializer.new(column) }
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