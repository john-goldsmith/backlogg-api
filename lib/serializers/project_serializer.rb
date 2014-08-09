module Backlogg

  module Serializers

    class ProjectSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug

      has_one :user#, serializer: "Backlogg::Serializers::UserSerializer"

    end

  end

end