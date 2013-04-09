class TicketsController < ApplicationController

	def index
		@ticket = Ticket.all

	end
	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(params[:ticket])
		@ticket.save
		flash[:notice] = "Ticket creado."
		redirect_to [@ticket]
	end
	def show
		@ticket = Ticket.find(params[:id])
	end
	
	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		flash[:notice] = "Ticket borrado correctamente."
		redirect_to tickets_path
	end

end
