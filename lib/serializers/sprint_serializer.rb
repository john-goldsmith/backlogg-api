module Backlogg

  module Serializers

    class SprintSerializer < ApplicationSerializer

      # embed :ids, embed_in_root: true, include: true

      attributes :id,
                 :name,
                 :slug,
                 :is_active,
                 :created_at,
                 :updated_at

      # has_one :project#, serializer: "Backlogg::Serializers::ProjectSerializer"
      # has_many :columns#, serializer: "Backlogg::Serializers::ColumnSerializer"
      # has_many :tasks, through: :columns#, serializer: "Backlogg::Serializers::TaskSerializer"
      # has_many :comments, through: :tasks#, serializer: "Backlogg::Serializers::CommentSerializer"

    end

  end

end