module Backlogg

  module Models

    class Project < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      belongs_to :user
      has_many :sprints
      has_many :columns, through: :sprints
      has_many :tasks, through: :columns
      has_many :comments, through: :tasks

      validates :name, presence: true
      validates :user, presence: true
      validates :code, presence: true, uniqueness: true
      validates_associated :user

      # TODO: user or user_id ?
      attr_accessible :name,
                      :slug,
                      :user,
                      :code,
                      :is_active,
                      :user_id,
                      :created_at,
                      :updated_at

      before_validation :upcase_code

      private

      def upcase_code
        code.upcase!
      end

    end

  end

end