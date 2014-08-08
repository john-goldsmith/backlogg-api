module Backlogg

  module Models

    class Sprint < ActiveRecord::Base

      belongs_to :project

      validates_associated :project

    end

  end

end