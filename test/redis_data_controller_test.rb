require 'test_helper'
require 'redis_bucket'

class RedisDataControllerTest < ActionController::TestCase
  	test "truth" do
      assert_kind_of Module, RedisBucket
    end    
    test "responds to simple post request" do
      @routes = RedisBucket::Engine.routes
      assert_routing({:method => :post, :path => '/redis_data/store', :use_route => :redis_bucket}, {:controller => 'redis_bucket/redis_data', :action => 'store'})
      assert_routing({:method => :post, :path => '/redis_data/fetch', :use_route => :redis_bucket}, {:controller => 'redis_bucket/redis_data', :action => 'fetch'})
      assert_routing({:method => :post, :path => '/redis_data/remove', :use_route => :redis_bucket}, {:controller => 'redis_bucket/redis_data', :action => 'remove'})
      assert_routing({:method => :post, :path => '/redis_data/get_keys', :use_route => :redis_bucket}, {:controller => 'redis_bucket/redis_data', :action => 'get_keys'})
    end
end