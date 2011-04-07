class MongoidPublishable::PublishController < ApplicationController
  before_filter :get_resource, :only => [:create, :destroy]

  def create
    @resource.publish!
    redirect_to :back
  end

  def destroy
    @resource.unpublish!
    redirect_to :back
  end

  private
  def get_resource
    key = ""
    params.keys.each do |k|
      key = k if k.index("_id")
    end
    raise Mongoid::Publishable::NoIdSpecifed.new if key.nil? || key.blank?
    id = params[key]
    name = key.split("_id").first
    klass = name.classify
    model = Kernel.const_get(klass)
    if model.respond_to?(:find_by_slug)
      @resource = model.find_by_slug(id)
    else
      @resource = model.find(id)
    end
    raise Mongoid::Publishable::ResourceNotFound.new(model, id) if @resource.nil?
  end
end
