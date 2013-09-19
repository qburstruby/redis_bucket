class MountEngineGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  def add_to_routes
    mount_engine_route  = "mount RedisBucket::Engine, :at => '/redis_bucket'"
    route mount_engine_route
  end
end
