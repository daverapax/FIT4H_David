class Movie
	
	attr_accessor :title

	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end

	def thumbs_up
		@rank += 1 # @rank = @rank + 1
	end

	def thumbs_down
		@rank -= 1
	end


	def to_s
		"#{@title} hat ein Ranking von: #{@rank}"
	end

end

obj_movie1 = Movie.new('turtles', 5)
obj_movie2 = Movie.new('8mm', 9)
obj_movie3 = Movie.new('Film', 3)

movies = [obj_movie1, obj_movie2, obj_movie3]
movies.each do |movie|
	puts movie
end
