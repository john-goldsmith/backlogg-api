module Backlogg

  module Serializers

    class ColumnSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug

      has_one :project, serializer: "Backlogg::Serializers::ProjectSerializer"
      has_many :tasks, serializer: "Backlogg::Serializers::TaskSerializer"

    end

  end

end