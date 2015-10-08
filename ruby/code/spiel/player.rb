class Player
	
	attr_accessor :health, :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth

	end

	def hallo

	puts "Hallo ich bin #{@name} mit dem Wert #{@health} um #{Time.now.strftime("%H:%M")}"

	end

	def w00t
		@health += 10
		puts "#{@name} goot w00ted"
	end

	def blamed
		@health -= 10
		puts "#{@name} goot blamed"
	end

	def score

		@health + @name.length

	end

	def dice
		rand(1..200)
	end

	def status
		if dice >= 100
			puts "#{@name} ist STRONG!!!"
			else
			puts "#{@name} ist WIMPY!!!"
		end
	end

end