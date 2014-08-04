module Backlogg

  module Api

    module V1

      class UsersController < ApplicationController

        get '/' do
          {foo: "bar"}.to_json
        end

        get '/:id' do
          # Get specific user
        end

        post '/' do
          # Create new user
        end

        put '/:id' do
          # Update specific user
        end

        delete '/:id' do
          # Delete specific user
        end

      end

    end

  end

end