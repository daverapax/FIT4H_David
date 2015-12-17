class Project < ActiveRecord::Base
	has_many :questions
	def self.gone
		
		where("ttl >= ?", Time.now).order("ttl")

	end
		
end
