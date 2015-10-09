class Kredit

	attr_accessor :jahresgehalt
	attr_accessor :kreditsumme
	attr_accessor :monate

	def initialize(kunde)

		@kunde = kunde
		@jahresgehalt = @kunde.gehalt*12

	end

	def kunde

		puts "#{@kunde.daten}Jahresgehalt: #{jahresgehalt}"

	end

	def kreditvergabe

		if jahresgehalt > 6*kreditsumme
			puts "Der Kredit in Hoehe von #{kreditsumme} € kann gewaehrt werden"
		else
			puts "Der Computer sagt: nein"
		end

	end

	def abzahlung

		puts "Bei einer Rückzahlung des Kredits von #{kreditsumme} € innerhalb von #{monate} Monaten ist pro Monat eine Zahlung von #{kreditsumme/monate} € notwendig."

	end

end