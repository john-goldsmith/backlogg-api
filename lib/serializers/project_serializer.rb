# module Backlogg

  # module Serializers

    class ProjectSerializer < ApplicationSerializer

      attributes :id
                 # :name,
                 # :slug

      # has_one :user
      # has_many :columns
      # has_many :tasks, through: :columns
      # has_many :comments, through: :tasks

    end

  # end

# end