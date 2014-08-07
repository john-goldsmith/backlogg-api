module Backlogg

  module Serializers

    class CommentSerializer < ApplicationSerializer

      attributes :id,
                 :body

      has_one :user, serializer: "Backlogg::Serializers::UserSerializer"
      has_one :task, serializer: "Backlogg::Serializers::TaskSerializer"

    end

  end

end