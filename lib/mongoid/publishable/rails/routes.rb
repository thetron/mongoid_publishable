module ActionDispatch::Routing
  class Mapper
    def publishable(names)
      names = Array(names)
      if names.any?
        get names.map{|n| n.to_s}.join('/') + "/:#{names.last.to_s.singularize}_id/publish" => 'mongoid_publishable/publish#create', :as => names.map{|n| n.to_s}.join("_") + "_publish"
        get names.map{|n| n.to_s}.join('/') + "/:#{names.last.to_s.singularize}_id/unpublish" => 'mongoid_publishable/publish#destroy', :as => names.map{|n| n.to_s}.join("_") + "_unpublish"
      end
    end

    # note, this is how things _should_ work (as a nested call) - but I 
    # can't get this to properly map to the gem namespace, as rails automatically
    # prepends the parent namespace. Left here in case a solution presents itself.
    def is_publishable
      get 'publish' => 'mongoid_publishable/publish#create'
      get 'unpublish'  => 'mongoid_publishable/publish#destroy'
    end
  end
end
