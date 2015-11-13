class Event < ActiveRecord::Base

	def free?
		
		price.zero?
	
	end
end
