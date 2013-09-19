RedisBucket::Engine.routes.draw do
	resource :redis_data do
    collection do           
      post 'store' => 'redis_data#store', :as => 'store'
      post 'fetch' => 'redis_data#fetch', :as => 'fetch'
      post 'remove' => 'redis_data#remove', :as => 'remove'
      post 'get_keys' => 'redis_data#get_keys', :as => 'getallkeys'
    end
  end
end
