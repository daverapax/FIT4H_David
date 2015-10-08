require_relative 'movie'
require_relative 'playlist'

obj_movie1 = Movie.new('turtles', 5)
obj_movie2 = Movie.new('8mm', 9)
obj_movie3 = Movie.new('Film', 12)

pl = Playlist.new("Meine")
pl.add(obj_movie1)
pl.add(obj_movie3)
pl.add(obj_movie2)
pl.play

puts "-------"
puts obj_movie2.status
puts obj_movie3.status