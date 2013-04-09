class ProblemsController < ApplicationController
 include Wicked::Wizard

  steps :confirm_password, :confirm_profile, :find_friends


	
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


end
