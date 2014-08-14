module Backlogg

  module Models

    class Project < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      belongs_to :user
      has_many :sprints

      validates :name, presence: true
      validates :user, presence: true
      validates :code, presence: true, uniqueness: true
      validates_associated :user

      attr_accessible :name, :slug, :user, :code, :is_active

      before_validation :upcase_code

      private

      def upcase_code
        code.upcase!
      end

    end

  end

end