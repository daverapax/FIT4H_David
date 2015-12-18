class RegistrationsController < ApplicationController

	before_action :set_event

	def index
		
		@registrations = @event.registrations 
	end

	def new
		
		@registraion = @event.registrations.new

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

	private
		def set_event
			@event = Event.find(params[:event_id])
		end

		def registration_params
			params.require(:registration).permit(:name, :email, :heared, :event_id)
		end
end
