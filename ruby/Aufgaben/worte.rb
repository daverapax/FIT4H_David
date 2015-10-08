wor = %w(Pflaume Bausschaum Auster)
# var = wor.select do |a|
# 	a.downcase.include?("aus")
# end

# puts var

# sort = wor.sort_by do |a|
# 	a.length
# end

# puts sort

# puts "----------"

# keys = Hash.new
# wor.each do |p|
# 	keys[p] = p.length
# end
# puts keys

lotto = []
7.times do 
	z = rand(1..49)
	while lotto.include?(z)
		z = rand(1..49)
	end
	lotto << z
end

#puts lotto.sort 

puts lotto2 = (1..49).to_a.sample(7).sort 

loddo = Hash.new
%w(peter paul mary).each do |blub|
	loddo[blub] = (1..49).to_a.sample(7).sort
end

puts loddo
