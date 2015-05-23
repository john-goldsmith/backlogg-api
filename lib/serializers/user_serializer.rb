module Backlogg

  module Serializers

    class UserSerializer < ApplicationSerializer

      attributes :id,
                 :first_name,
                 :last_name,
                 :email,
                 :screen_name

      # has_many :comments#, serializer: "Backlogg::Serializers::CommentSerializer"
      # has_many :projects#, serializer: "Backlogg::Serializers::ProjectSerializer"

    end

  end

end