$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redis_bucket/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redis_bucket"
  s.version     = RedisBucket::VERSION
  s.authors     = ["manishaharidas"]
  s.email       = ["qbruby@qburst.com"]
  s.homepage    = ""
  s.summary     = "Redis Mountable Engine"
  s.description = "RedisBucket is a gem that acts as an api engine which mounts automattically into the rails application on installation."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*","app"]

  s.add_dependency "rails", ">= 3.0.0"
  s.add_dependency "redis"

  s.add_development_dependency "sqlite3"
end
