module Backlogg

  module Api

    module V1

      class TasksController < ApplicationController

        get '/' do
          # Get all tasks
        end

        get '/:id' do
          # Get specific task
        end

        post '/' do
          # Create new task
        end

        put '/:id' do
          # Update specific task
        end

        delete '/:id' do
          # Delete specific task
        end

      end

    end

  end

end