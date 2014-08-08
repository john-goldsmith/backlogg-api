module Backlogg

  module Api

    module V1

      class SprintsController < ApplicationController

        # Get all sprints
        get '/' do
          json Sprint.all.map { |task| Backlogg::Serializers::SprintSerializer.new(sprint) }
        end

        # Get a specific sprint
        get '/:id' do
          sprint = Sprint.find_by_id(params[:id])
          json Backlogg::Serializers::SprintSerializer.new(sprint)
        end

        # Create a new sprint
        post '/' do

        end

        # Update a specific sprint
        put '/:id' do

        end

        # Delete a specific sprint
        delete '/:id' do

        end

      end

    end

  end

end