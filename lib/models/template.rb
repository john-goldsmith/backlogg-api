module Backlogg

  module Models

    class Template < ActiveRecord::Base

      include Backlogg::Concerns::Slugable

      has_many :template_columns

      validates :name, presence: true

    end

  end

end