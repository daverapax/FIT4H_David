class Calc

	def initialize(pwert1, pwert2)
		@wert1 = pwert1
		@wert2 = pwert2
	end

	def add
		@add = @wert1 + @wert2
		puts @add
	end

	def sub
		@sub = @wert1 - @wert2
		puts @sub
	end

end

test = Calc.new(10, 5)
test.add
test.sub

