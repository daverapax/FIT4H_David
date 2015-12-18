class EventsController < ApplicationController

	def index

		@events = Event.upcoming

	end

	def showall

		@events = Event.all

	end

	def show

		@event = Event.find(params[:id])

	end

	def edit

		@event = Event.find(params[:id])

	end

	def update

		@event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to event_path(@event.id)
		else
			render "edit"
		end

	end

	def new

		@event = Event.new

	end

	def create

		@event = Event.new
		if @event.update(event_params)
			flash[:notice] = "speichern erfolgreich"
			redirect_to event_path(@event.id)
		else
			flash[:alert] = "Eingabefehler"
			render "new"
		end

	end

	def destroy

		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url

	end

	private
		def event_params
			params.require(:event).permit(:name, :desciption, :location, :price, :start_at, :image, :capacity)
		end


end
