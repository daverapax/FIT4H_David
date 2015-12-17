class RegistrationsController < ApplicationController

	def index
		@event = Event.find(params[:event_id])
		@registrations = @event.registrations 
	end

	def new

		@registraion = Registraion.new

	end

	def create

		@registraion = Registraion.new
		if @registraion.update(registraion_params)
			flash[:notice] = "speichern erfolgreich"
			redirect_to registraion_path(@registraion.id)
		else 
			render "new"
		end

	end

	private
		def registration_params
			params.require(:registration).permit(:name, :email, :heared, :event_id)
		end
end
