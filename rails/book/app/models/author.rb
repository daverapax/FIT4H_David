class Author < ActiveRecord::Base
	def name
		name = self.vorname + " " + self.nachname
	end

	validates :gebrutstag, inclusion: { in: 1916..2001 }
end
