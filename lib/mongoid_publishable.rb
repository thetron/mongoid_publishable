module Mongoid
  module Publishable

  end
end

require File.join(File.dirname(__FILE__), 'mongoid/publishable/rails/routes')
require File.join(File.dirname(__FILE__), 'mongoid/publishable/engine')
require File.join(File.dirname(__FILE__), 'mongoid/publishable')
