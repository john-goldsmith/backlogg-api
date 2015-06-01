module Backlogg

  module Serializers

    class ProjectSerializer < ApplicationSerializer

      embed :ids, include: true

      attributes :id,
                 :name,
                 :slug,
                 :code,
                 :is_active,
                 :created_at,
                 :updated_at

      # has_one :user, serializer: "Backlogg::Serializers::UserSerializer"
      # has_many :sprints, serializer: "Backlogg::Serializers::SprintSerializer"

    end

  end

end