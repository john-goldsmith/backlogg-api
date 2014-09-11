module Backlogg

  module Serializers

    class SprintSerializer < ApplicationSerializer

      root false

      attributes :id,
                 :name,
                 :slug

      # has_one :project#, serializer: "Backlogg::Serializers::ProjectSerializer"
      # has_many :columns#, serializer: "Backlogg::Serializers::ColumnSerializer"
      # has_many :tasks, through: :columns#, serializer: "Backlogg::Serializers::TaskSerializer"
      # has_many :comments, through: :tasks#, serializer: "Backlogg::Serializers::CommentSerializer"

    end

  end

end