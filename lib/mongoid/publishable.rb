module Mongoid
  module Publishable
    def self.included(base)
      base.field :published_at, :type => DateTime
      base.extend ClassMethods
      base.send :include, InstanceMethods
    end

    module ClassMethods
      def published
        where(:published_at => {'$lte' => Time.now}).desc(:published_at)
      end

      def drafts
        where(:published_at => nil).desc(:published_at)
      end
    end

    module InstanceMethods
      def is_published?
        !published_at.nil?
      end

      def is_draft?
        published_at.nil?
      end

      def publish!
        self.published_at = Time.now
        self.save!
      end

      def unpublish!
        self.published_at = nil
        self.save!
      end
    end
  end
end
