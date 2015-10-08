require_relative 'kunde'
require_relative 'kredit'

kunde1 = Kunde.new('theo', 'sommer')
puts kunde1.name
#kunde1.name = "theo sonnenschein"
puts kunde1.name
puts kunde1.addr
kunde1.gehalt = 2000
puts kunde1.gehalt