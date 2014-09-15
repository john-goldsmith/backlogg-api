module Backlogg

  module Serializers

    class ProjectSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug,
                 :code,
                 :is_active,
                 :created_at,
                 :updated_at

      has_one :user#, serializer: "Backlogg::Serializers::UserSerializer"

    end

  end

end