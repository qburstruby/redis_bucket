Dummy::Application.routes.draw do
  mount RedisBucket::Engine => "/redis_bucket"
end
