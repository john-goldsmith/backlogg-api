module Backlogg

  module Serializers

    class CommentSerializer < ApplicationSerializer

      has_one :user, serializer: "Backlogg::Serializers::UserSerializer", embed: :id, include: true
      # has_one :task#, serializer: "Backlogg::Serializers::TaskSerializer"

      attributes :id,
                 :body
                 # :links

      # def links
      #   {
      #     user: "/api/v1/users/#{id}"
      #   }
      # end

    end

  end

end