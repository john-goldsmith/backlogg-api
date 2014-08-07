module Backlogg

  module Serializers

    class ProjectSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug

      has_one :user
      has_many :columns
      has_many :tasks, through: :columns, serializer: "Backlogg::Serializers::TaskSerializer"
      has_many :comments, through: :tasks, serializer: "Backlogg::Serializers::CommentSerializer"

    end

  end

end