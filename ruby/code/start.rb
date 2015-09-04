str = "Freitag"

puts str

zahl = 04
puts zahl
#puts konvertiert eine Zahl in einen String, besser ist aber eine explizite Konvertierung

puts zahl.to_s

#Zusammengesetzte Strings:
puts str + zahl.to_s

puts "#{str} der #{zahl}. im Monat"

str = "Freitag"
zahl = 04

puts "Heute ist #{str}, der #{Time.new}."

3.times do 
	puts str
end
