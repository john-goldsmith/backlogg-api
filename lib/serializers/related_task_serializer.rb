module Backlogg

  module Serializers

    class RelatedTaskSerializer < ApplicationSerializer

      attributes :id

      # has_one :user#, serializer: "Backlogg::Serializers::UserSerializer"
      has_one :column#, serializer: "Backlogg::Serializers::ColumnSerializer"
      has_many :comments#, serializer: "Backlogg::Serializers::CommentSerializer"

    end

  end

end