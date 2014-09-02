module Backlogg

  module Serializers

    class ProjectSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug,
                 :code,
                 :is_active

      has_one :user#, serializer: "Backlogg::Serializers::UserSerializer"

    end

  end

end