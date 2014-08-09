module Backlogg

  module Models

    class Project < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      belongs_to :user
      has_many :sprints

      validates :name, presence: true
      validates :slug, uniqueness: true
      validates_associated :user

    end

  end

end