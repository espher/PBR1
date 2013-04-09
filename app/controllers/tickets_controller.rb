class TicketsController < ApplicationController
	def new
		@ticket = Ticket.new

	end

	def create
		@ticket = Ticket.new(params[:ticket])
	if @ticket.save
		flash[:notice] = "Ticket creado."
		redirect_to [@ticket]
	else
		flash[:alert] = "Ticket no creado."
		render :action => "new"
end
end
	def show
		end
end
