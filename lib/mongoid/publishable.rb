module Mongoid
  module Publishable
    extend ActiveSupport::Concern

    included do
      field :published_at, :type => DateTime, :default => nil
      field :permalink
    end

    module ClassMethods
      def scheduled
        where(:published_at => {'$gt' => Time.now}).asc(:published_at)
      end

      def published
        where(:published_at => {'$lte' => Time.now}).desc(:published_at)
      end

      def drafts
        where(:published_at => nil).desc(:published_at)
      end
    end

    module InstanceMethods
      def publish=(value)
        self.published_at = Time.now
      end

      def is_scheduled?
        return true if self.published_at && self.published_at > Time.now
        false
      end

      def is_published?
        return true if self.published_at && self.published_at <= Time.now
        false
      end

      def is_draft?
        return true if self.published_at.nil?
        false
      end

      def schedule!(time)
        update_attributes(:published_at => time)
      end

      def publish!
        update_attributes(:published_at => Time.now)
      end

      def unpublish!
        update_attributes(:published_at => nil)
      end
    end
  end
end
