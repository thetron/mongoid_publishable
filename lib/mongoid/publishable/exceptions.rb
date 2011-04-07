module Mongoid
  module Publishable
    class Error < StandardError
      def to_s
        @default_message
      end
    end

    class NoIdSpecified < Error
      def initialize()
        @deafault_message = "Model id not found in params."
      end
    end

    class ResourceNotFound < Error
      def initialize(model, id)
        @default_message = "#{model.titleize} not found with id or slug '#{id}'."
      end
    end
  end
end
