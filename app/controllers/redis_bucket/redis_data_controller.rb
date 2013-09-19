module RedisBucket
	class RedisDataController < ::ApplicationController
		#Function to render static json 
		def store
			begin					
				datatostore = Datastore.new			
				datatostore.store(params[:key], params[:keyvalue])
				render :status => 200,
	           		:json => { :response => "success",
	                      	   :status => 200,
	                      	   :info => "Successfully stored",                      
	                       	   :data => {} }
			rescue Exception => e
				render :status => :unprocessable_entity,
	             	   :json => { :response => "fail",
	                        	  :status => 401,
	                              :info => e.message }
			end
		end
		#Function to fetch static json
		def fetch
			begin			
				datatofetch = Datastore.new			
				@json = datatofetch.fetch(params[:key])
				render :status => 200,
	           		:json => { :response => "success",
	                      	   :status => 200,
	                      	   :info => "Successfully fetched",                      
	                       	   :data => @json }
			rescue Exception => e
				render :status => :unprocessable_entity,
	             	   :json => { :response => "fail",
	                        	  :status => 401,
	                              :info => e.message }
			end
		end
		#Function to delete static json
		def remove	
			begin							
				datatoremove = Datastore.new			
				datatoremove.delete(params[:key])
				render :status => 200,
	           		:json => { :response => "success",
	                      	   :status => 200,
	                      	   :info => "Successfully removed",                      
	                       	   :data => {} }
			rescue Exception => e
				render :status => :unprocessable_entity,
	             	   :json => { :response => "fail",
	                        	  :status => 401,
	                              :info => e.message }
			end
		end
		#Retrieve all keys stored in redis
		def get_keys		
			begin							
				getkeys = Datastore.new			
				render :status => 200,
	           		:json => { :response => "success",
	                      	   :status => 200,
	                      	   :info => "Successfully retrieved all keys",                      
	                       	   :data => getkeys.getallkeys }
			rescue Exception => e
				render :status => :unprocessable_entity,
	             	   :json => { :response => "fail",
	                        	  :status => 401,
	                              :info => e.message }
			end
		end
	end
end
