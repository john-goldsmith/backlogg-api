module Backlogg

  module Models

    class Column < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      has_many :tasks
      belongs_to :sprint

      validates :name, presence: true
      validates_associated :sprint

    end

  end

end