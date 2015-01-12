module Backlogg

  module Serializers

    class ColumnSerializer < ApplicationSerializer

      # delegate :params, to: :scope

      attributes :id,
                 :name,
                 :slug

      # has_one :sprint#, serializer: "Backlogg::Serializers::SprintSerializer"
      has_many :tasks#, serializer: "Backlogg::Serializers::TaskSerializer" # This won't work due to load order

    end

  end

end