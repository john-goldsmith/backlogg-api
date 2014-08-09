module Backlogg

  module Models

    class TagType < ActiveRecord::Base

      has_many :tags

      validates :name, presence: true

    end

  end

end