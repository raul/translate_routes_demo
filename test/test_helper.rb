ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

require 'translate_routes_test_helper' # here you get translated routes

class Test::Unit::TestCase
end
