module Backlogg

  module Models

    class Task < ActiveRecord::Base

      include Backlogg::Concerns::Slugable

      belongs_to :column
      has_many :comments

      validates :name, presence: true
      validates_associated :column

    end

  end

end