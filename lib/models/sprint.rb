module Backlogg

  module Models

    class Sprint < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      belongs_to :project
      has_many :columns
      has_many :tasks, through: :columns
      has_many :comments, through: :tasks

      validates_associated :project

    end

  end

end