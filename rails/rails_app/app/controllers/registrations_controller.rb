class RegistrationsController < ApplicationController

	before_action :set_event

	def index
		
		@registrations = @event.registrations 
	end

	def new
		
		@registration = @event.registrations.new

	end

	def create

		@registration = @event.registrations.new(registration_params)
		if @registration.save
			#flash[:notice] = "speichern erfolgreich"
			redirect_to event_registrations_path(@event.id), notice: "speichern erfolgreich"
		else
			flash[:alert] = "Eingabefehler"
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
