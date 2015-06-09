module Backlogg

  module Serializers

    class ProjectArraySerializer < ApplicationSerializer

      # has_one :user, serializer: "Backlogg::Serializers::UserSerializer"
      # has_many :sprints, serializer: "Backlogg::Serializers::SprintSerializer", embed: :ids

      attributes :id,
                 :name,
                 :slug,
                 :code,
                 :is_active,
                 :created_at,
                 :updated_at,
                 :links

      # See http://stackoverflow.com/questions/18812730/ember-data-lazy-load-association-with-links-attribute
      # See http://www.toptal.com/emberjs/a-thorough-guide-to-ember-data
      # TODO: Remove "/api/v1" in favor of dynamic vars
      def links
        {
          sprints: "/api/v1/projects/#{id}/sprints"
        }
      end

    end

  end

end