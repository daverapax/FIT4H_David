require_relative 'kunde'
require_relative 'kredit'

puts "Name des neuen Kunden"
name = gets
kunde1 = Kunde.new(name)
puts kunde1.name
puts "Montasgehalt von #{kunde1.name}?"
mgehalt = gets
kunde1.gehalt = mgehalt
puts kunde1.gehalt
puts "Adresse des Kunden?"
adresse = gets
kunde1.addr = adresse
puts kunde1.addr
puts "----------"
kunde1.daten
puts "----------"
kredit1 = Kredit.new(kunde1)
puts "Kredithöhe?"
puts "Wieviel will er haben?"
money = gets
kredit1.kreditsumme = money
kredit1.kunde
puts "----------"
kredit1.kreditvergabe
puts "----------"
