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