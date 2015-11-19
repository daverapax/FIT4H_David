class Movie < ActiveRecord::Base

	def self.erschienen
		where("release <= ?", Time.now).order("release")
	end
end
