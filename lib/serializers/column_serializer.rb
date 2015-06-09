module Backlogg

  module Serializers

    class ColumnSerializer < ApplicationSerializer

      # has_one :sprint#, serializer: "Backlogg::Serializers::SprintSerializer"
      has_many :tasks, serializer: "Backlogg::Serializers::TaskSerializer", embed: :ids, include: true

      attributes :id,
                 :name,
                 :slug,
                 :sprint_id,
                 :is_active,
                 :links

      def links
        {
          tasks: "/api/v1/tasks/#{id}"
        }
      end

    end

  end

end