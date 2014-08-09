module Backlogg

  module Models

    class Template < ActiveRecord::Base

      include Backlogg::Concerns::Sluggable

      has_many :template_columns

      validates :name, presence: true

    end

  end

end