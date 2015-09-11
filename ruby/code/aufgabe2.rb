# def say_hello(name, health=100)

# 	"Hallo ich bin #{name} mit dem Wert #{health} um #{Time.now.strftime("%H:%M")}"

# end

#puts say_hello('Ludwig', 75)

class Player
	

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth

	end

	def say_hello

	"Hallo ich bin #{@name} mit dem Wert #{@health} um #{Time.now.strftime("%H:%M")}"

	end

	def w00t
		@health += 10
	end

	def blamed
		@health -= 10
	end

end


	


player1 = Player.new('richard', 75)
puts player1.say_hello
player2 = Player.new('Micha')
puts player2.say_hello
player2.w00t
player1.blamed
players = "#{player1.say_hello}\n#{player2.say_hello}"
puts players