module Backlogg

  module Models

    class Tag < ActiveRecord::Base

      has_one :tag_type
      # has_many :tasks

      # validates_associated :task
      validates_associated :tag_type

    end

  end

end