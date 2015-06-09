module Backlogg

  module Serializers

    class TaskSerializer < ApplicationSerializer

      # has_one :user#, serializer: "Backlogg::Serializers::UserSerializer"
      # has_one :column#, serializer: "Backlogg::Serializers::ColumnSerializer"
      has_many :comments, serializer: "Backlogg::Serializers::CommentSerializer", embed: :ids

      attributes :id,
                 :name,
                 :slug,
                 :column_id,
                 :parent_task,
                 :comments_allowed,
                 :is_active,
                 :links

      # TODO: Remove "/api/v1" in favor of dynamic vars
      def links
        {
          comments: "/api/v1/tasks/#{id}/comments",
        }
      end

    end

  end

end