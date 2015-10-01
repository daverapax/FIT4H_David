class Game

	def initialize(name)
		@name = name
		@players = []
	end

	def add(player)
		@players << player
		#puts @players.size.to_s
	end

	def get
		@players.each do |info|
			puts "\#\#\#\nSpieler: \t#{info.name}\nHealth: \t#{info.health}\nScore: \t\t#{info.score}\n\#\#\#"
		end
	end

	def play
		puts "There are #{@players.size} players in Knucklehead!"
		@players.each do |echo|
			echo.hallo
		end
		@players.each do |action|
			action.blamed
			2.times do
				action.w00t
			end
			action.hallo
		end

	end

end

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

end


	


player1 = Player.new('richard', 75)
player2 = Player.new('Micha')
player3 = Player.new('Tom', 45)

spiel = Game.new("Spiel1")
spiel.add(player1)
spiel.add(player2)
spiel.add(player3)
spiel.play
spiel.get
