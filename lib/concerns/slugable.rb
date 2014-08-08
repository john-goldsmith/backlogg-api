module Backlogg

  module Concerns

    module Slugable

      extend ActiveSupport::Concern

      included do
        after_create :update_slug
        before_update :assign_slug # Shouldn't slugs be idempotent?
      end

      def assign_slug
        self.slug = "#{self.id}-#{self.name.parameterize}"
      end

      def update_slug
        update slug: assign_slug
      end

      module ClassMethods
      end

    end

  end

end