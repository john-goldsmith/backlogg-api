module Backlogg

  module Api

    module V1

      class ProjectsController < ApplicationController

        get '/' do
          # Get all projects
        end

        get '/:id' do
          # Get specific project
        end

        post '/' do
          # Create new project
        end

        put '/:id' do
          # Update specific project
        end

        delete '/:id' do
          # Delete specific project
        end

      end

    end

  end

end