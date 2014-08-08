module Backlogg

  module Models

    class Column < ActiveRecord::Base

      include Backlogg::Concerns::Slugable

      has_many :tasks
      belongs_to :project

      validates :name, presence: true
      validates_associated :project

    end

  end

end