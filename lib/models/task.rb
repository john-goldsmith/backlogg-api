module Backlogg

  module Models

    class Task < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable
      include Backlogg::Concerns::Taggable
      include Backlogg::Concerns::Commentable

      belongs_to :column
      has_one :task_type
      has_many :related_tasks

      validates :name, presence: true
      validates_associated :column

    end

  end

end