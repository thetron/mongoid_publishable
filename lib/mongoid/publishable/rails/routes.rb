module ActionDispatch::Routing
  class Mapper
    def publishable
      self.match 'publish'    => 'mongoid_publishable/publish#create'
      self.match 'unpublish'  => 'mongoid_publishable/unpublish#destroy'
    end
  end
end
