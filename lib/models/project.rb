module Backlogg

  module Models

    class Project < ActiveRecord::Base

      include Backlogg::Concerns::Slugable

      belongs_to :user
      has_many :columns
      has_many :tasks, through: :columns
      has_many :comments, through: :tasks

      validates :name, presence: true
      validates :slug, uniqueness: true
      validates_associated :user

    end

  end

end