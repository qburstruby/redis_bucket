module RedisBucket
	class Datastore	
		#Function to store static json in redis
		def store(key, keyvalue)
			puts key
			puts keyvalue
			$redis.set(key, keyvalue)
			kvalue= $redis.get(key)
			puts kvalue
		end
		#Function to retrieve, stored static json in redis	
		def fetch(key)
			puts key		
			kvalue= $redis.get(key)
			puts kvalue
			return kvalue
		end
		#Function to delete, static json in redis	
		def delete(key)
			puts key		
			$redis.del(key)			
		end
		#Function to retrieve, all keys stored in redis
		def getallkeys				
			return $redis.keys"*"
		end	
	end
end