class Kunde

	attr_accessor :vname
	attr_accessor :nname
	attr_accessor :name
	attr_accessor :addr
	attr_accessor :gehalt

	def initialize(kvname, knname)
		@vname = kvname
		@nname = knname
		#@addr = kaddr
		@name = @vname.capitalize! + " " + @nname.capitalize!
	end

	



end
