class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy
	validates :name, presence: true
	validates :desciption, :length => { minimum: 25 }
	validates :capacity, :numericality => { only_interger: true, greater_than: 0}
	validates :image, allow_blank: true, format: { with: /\w+\.(gif|png|gif)\z/i, message: "Dateiformat muss JPG, GIF oder PNG sein" }


	def free?
		
		 price.blank? || price.zero?
	
	end

	def self.upcoming
		
		where("start_at >= ?", Time.now).order("start_at")

	end

end

