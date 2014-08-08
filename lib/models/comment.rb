module Backlogg

  module Models

    class Comment < ActiveRecord::Base

      belongs_to :task
      belongs_to :user

      validates :body, presence: true
      validates_associated :task
      validates_associated :user

    end

  end

end