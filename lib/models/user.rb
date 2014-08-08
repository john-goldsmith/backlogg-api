module Backlogg

  module Models

    class User < ActiveRecord::Base

      has_many :projects
      has_many :comments

      validates :screen_name, presence: true, uniqueness: true
      validates :first_name, presence: true
      validates :last_name, presence: true
      validates :email, presence: true, uniqueness: true

    end

  end

end