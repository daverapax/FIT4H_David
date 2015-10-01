#1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.

# a. geben Sie diese Zahlen in einem Block aus
# a = arr1.size
# i = 0
# a.times do |block|
# 	puts "Index #{i} - Wert: #{arr1[i]}"
# 	i += 1
# end
arr1 = (15..20).to_a
arr1.size.times { |p| puts "Index #{p} - Wert: #{arr1[p]}"}
puts "-------------------"
arr2 = []
arr4 = []
#arr1.size.times { |q| arr2[arr1[q]] << rand(100) + 100}
i = arr1[0]
arr1.size.times do 
	arr2[i] = rand(100) + 100
	if arr2[i] > 150
		puts "Index: #{i} Wert: #{arr2[i].to_s} WOW!!!"
	else puts "Index: #{i} Wert: #{arr2[i].to_s}"
	end
	i += 1
end

puts "---------hash----------"
h1 = Hash.new
arr1.each do |x|
	h1[x] = rand(100) + 100
end

h1.each do |a, i|
	str = "Index: #{a} Wert: #{i}"
	if i > 150
		puts str + " WOW!!"
	else
		puts str
	end
end
puts "---------end----------"
puts "---------Quadratzahl----------"
arr3 = []
y = arr1[0]
x = 0
arr1.size.times do
	quar = arr2[y]*arr2[y]
	arr3 << quar
	puts "Die Quadratzahl von #{arr2[y]} ist #{arr3[x]}"
	y += 1
	x += 1
end
puts "-------------------"
puts "---------Quadrathash---------"
hq = Hash.new
y = arr1[0]
arr1.size.times do
	p = arr2[y]
	q = arr2[y]*arr2[y]
	hq[p] = q
	y += 1
end



hq.each do |key, val|
	puts "Die Quadratzahl von #{key} ist #{val}"
end
puts "-------------------"





# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel

# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..
# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}