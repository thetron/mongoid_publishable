module ActionDispatch::Routing
  class Mapper
    def publishable
      self.get 'publish'    => 'mongoid_publishable/publish#create'
      self.get 'unpublish'  => 'mongoid_publishable/publish#destroy'
    end
  end
end
