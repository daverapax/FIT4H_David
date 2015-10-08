class Playlist

	attr_accessor :name

	def initialize(name)
		@name = name
		@movies = []
	end

	def add(movie)
		@movies << movie
	end
	def roll_die
		rand(1..6)
	end

	def play
		puts "#{@name} Playlist"
		@movies.each do |movie|
			case roll_die
				when 1..2
					movie.thumbs_down
					puts "#{movie.title} wurde gedownt"
				when 3..4
					puts "#{movie.title} wurde verschont"
				else
					movie.thumbs_down
					puts "#{movie.title} wurde geupt"
			end

			puts movie
		end
	end

	def to_s
		@movies.size.to_s
	end

end