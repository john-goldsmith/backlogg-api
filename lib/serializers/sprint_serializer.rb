module Backlogg

  module Serializers

    class SprintSerializer < ApplicationSerializer

      embed :ids, include: true
      # has_one :project#, serializer: "Backlogg::Serializers::ProjectSerializer"
      has_many :columns, serializer: "Backlogg::Serializers::ColumnSerializer", embed: :ids
      has_many :tasks, through: :columns, serializer: "Backlogg::Serializers::TaskSerializer", embed: :ids
      # has_many :comments, through: :tasks#, serializer: "Backlogg::Serializers::CommentSerializer"

      attributes :id,
                 :name,
                 :slug,
                 :is_active,
                 :created_at,
                 :updated_at,
                 :links

      # TODO: Remove "/api/v1" in favor of dynamic vars
      def links
        {
          columns: "/api/v1/sprints/#{id}",
          tasks: "/api/v1/sprints/#{id}"
        }
      end

    end

  end

end