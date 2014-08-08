module Backlogg

  module Serializers

    class SprintSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug

      has_one :project#, serializer: "Backlogg::Serializers::ProjectSerializer"

    end

  end

end