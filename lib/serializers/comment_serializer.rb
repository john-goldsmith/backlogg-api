module Backlogg

  module Serializers

    class CommentSerializer < ApplicationSerializer

      embed :ids, include: true
      has_one :user, serializer: "Backlogg::Serializers::UserSerializer"
      # has_one :task#, serializer: "Backlogg::Serializers::TaskSerializer"

      attributes :id,
                 :body

    end

  end

end