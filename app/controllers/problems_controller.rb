class ProblemsController < ApplicationController
	
	def index
		@problem = Problem.all
	end
	def new
		@problem = Problem.new
	end
	def create
		@problem = Problem.new(params[:problem])
		@problem.save
		flash[:notice] = "Prorgrama Creado."
		redirect_to @problem
	end
	def show
	@problem = Problem.find(params[:id])
	end

	def edit
		@problem = Problem.find(params[:id])
	end

	def update
		@problem = Problem.find(params[:id])
		@problem.update_attributes(params[:problem])
		flash[:notice] = "Programa editado correctamente."
		redirect_to @problem
		
	
	end

	def destroy
		@problem = Problem.find(params[:id])
		@Problem.destroy
		flash[:notice] = "Programa borrado correctamente."
		redirect_to problems_path
	end
end
