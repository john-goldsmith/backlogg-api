module Backlogg

  module Concerns

    module Taggable

      extend ActiveSupport::Concern

      included do
        has_many :tags
      end

      module ClassMethods
      end

    end

  end

end