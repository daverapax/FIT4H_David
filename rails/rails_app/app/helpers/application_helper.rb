module ApplicationHelper

	def format_price(event)

		if event.free? 
				"FREE"
			else
			 		number_to_currency(event.price, unit: "€")
		end

	end

	def image_for(event)
			if event.image.blank?
				image_tag 'dummy.jpg'
			else
				image_tag event.image
			end
		end

end
