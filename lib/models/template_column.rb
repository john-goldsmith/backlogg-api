module Backlogg

  module Models

    class TemplateColumn < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      belongs_to :template

      validates :name, presence: true
      validates_associated :template

    end

  end

end