


def movie(name, rank=7)
	"Movie: #{name.downcase.capitalize} hat am #{weekday} die Wertung: #{rank}"
end

def weekday
	Time.now.strftime("%A")
end


puts movie("Turtles", 5)
puts movie("SWAT", )


#Beispiel für Variablen innerhalb von Methoden
# def movie
# 	var0 = "Film1"
# 	var1 = "Film2"
# 	"#{var0}\n#{var1}"
# end

# var = movie
# puts var