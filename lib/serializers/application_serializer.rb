module Backlogg

  module Serializers

    class ApplicationSerializer < ActiveModel::Serializer

      self.root = false

      # serialization_scope :view_context

    end

  end

end