require_relative 'kunde'
require_relative 'kredit'

kunde1 = Kunde.new('theo sommer')
puts kunde1.name
kunde1.name = "theo sonnenschein"
puts kunde1.name
#puts kunde1.addr
kunde1.gehalt = 3000
puts kunde1.gehalt
kunde1.addr = 'Hermelinweg 11, 22159 Hamburg'
puts kunde1.addr
puts "----------"
kunde1.daten
puts "----------"
kredit1 = Kredit.new(kunde1)
#kredit1.jahresgehalt = 24000
kredit1.kreditsumme = 3000
kredit1.kunde
puts "----------"
kredit1.kreditvergabe
puts "----------"
kredit1.monate = 12
kredit1.abzahlung
puts "----------"