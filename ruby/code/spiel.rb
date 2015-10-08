require_relative 'game'
require_relative 'player'
	


player1 = Player.new('richard', 75)
player2 = Player.new('Micha')
player3 = Player.new('Tom', 45)

spiel = Game.new("Spiel1")
spiel.add(player1)
spiel.add(player2)
spiel.add(player3)
spiel.play
spiel.get
puts "-------"
player1.status