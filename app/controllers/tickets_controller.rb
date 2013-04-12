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
		if @ticket.update_attributes(params[:ticket])
			flash[:notice] = "Ticket Modificado."
			redirect_to [@ticket]
		else
			flash[:alert] = "Ticket No Modificado."
			render :action => "edit"
		end
	end
	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		flash[:notice] = "Programa borrado correctamente."
		redirect_to ticketss_path
	end
end
