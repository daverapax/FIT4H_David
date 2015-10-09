class Kunde

	#attr_accessor :vname
	#attr_accessor :nname
	attr_accessor :name
	attr_accessor :addr
	attr_accessor :gehalt

	def initialize(name)
		#@vname = kvname
		#@nname = knname
		#@addr = kaddr
		@name = name
	end

	def daten
		puts "Vorname: #{@name.split.first.capitalize}\nNachname: #{@name.split.last.capitalize}\nAdresse: #{@addr}"
	end



end
