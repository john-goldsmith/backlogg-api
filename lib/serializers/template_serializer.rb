module Backlogg

  module Serializers

    class TemplateSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug,
                 :is_active

      has_many :template_columns, serializer: "Backlogg::Serializers::TemplateColumnSerializer"

    end

  end

end