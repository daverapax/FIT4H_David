require "prime"
zahlen = Prime.first 10
primes = Hash.new

zahlen.each do |x|
	if x < 10
		primes[x] = " ist einstellig"
		#puts "#{x} ist einstellig"
	else
		if x > 100
			primes[x] = " ist Dreistellig"
			#puts "#{x} ist Dreistellig"
		else
			primes[x] = " ist zweistellig"
			#puts "#{x} ist zweistellig"
		end
	end
end



puts "---------"



puts "---------"

primes.values.each do |k, v|
	puts "#{k} bla #{v}"
	
end