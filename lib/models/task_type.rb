module Backlogg

  module Models

    class TaskType < ActiveRecord::Base

      has_many :tasks

      validates :name, presence: true

    end

  end

end