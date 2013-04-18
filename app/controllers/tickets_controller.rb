class TicketsController < ApplicationController
before_filter :authenticate_user!, :except => [:index, :show]

	def index
		@ticket = Ticket.all
	end
	def new
		@ticket = Ticket.new
	end
	def create
		@ticket = Ticket.new(params[:ticket])
	    @ticket.save
		flash[:notice] = "Ticket reado correctamente."
		redirect_to @ticket
	end
	def show
		@ticket = Ticket.find(params[:id])
	end
	def edit
		@ticket = Ticket.find(params[:id])
	end
	def update
		@ticket = Ticket.find(params[:id])
		@ticket.update_attributes(params[:ticket])
		flash[:notice] = "Ticket editado correctamente."
		redirect_to @ticket
	end
	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		flash[:notice] = "Programa borrado correctamente."
		redirect_to ticketss_path
	end
end
