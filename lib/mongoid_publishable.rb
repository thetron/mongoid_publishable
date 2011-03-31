module Mongoid
  module Publishable

  end
end

require File.join(File.dirname(__FILE__), 'mongoid/publishable')
require File.join(File.dirname(__FILE__), 'mongoid/publishable/engine')
require File.join(File.dirname(__FILE__), 'mongoid/publishable/rails/routes')
