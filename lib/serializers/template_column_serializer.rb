module Backlogg

  module Serializers

    class TemplateColumnSerializer < ApplicationSerializer

      attributes :id,
                 :name,
                 :slug

      has_one :template, serializer: "Backlogg::Serializers::TemplateSerializer"

    end

  end

end