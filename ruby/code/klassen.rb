class Movie
	
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
puts obj_movie1
obj_movie1.thumbs_up
puts obj_movie1
3.times do
	obj_movie1.thumbs_down
end
puts obj_movie1	
