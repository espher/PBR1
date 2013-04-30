# coding: utf-8
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
		gon.problem_causes = Problem.joins(:levelonecause)
									.joins("LEFT OUTER JOIN leveltwocauses ON leveltwocauses.levelonecause_id = levelonecauses.id")
									.joins("LEFT OUTER JOIN levelthreecauses ON levelthreecauses.leveltwocause_id = leveltwocauses.id")
									.joins("LEFT OUTER JOIN levelfourcauses ON levelfourcauses.levelthreecause_id = levelthreecauses.id")
									.joins("LEFT OUTER JOIN levelfivecauses ON levelfivecauses.levelfourcause_id = levelfourcauses.id")
									.joins("LEFT OUTER JOIN levelsixcauses ON levelsixcauses.levelfivecause_id = levelfivecauses.id")
									.joins("LEFT OUTER JOIN levelsevencauses ON levelsevencauses.levelsixcause_id = levelsixcauses.id")
									.joins("LEFT OUTER JOIN leveleightcauses ON leveleightcauses.levelsevencause_id = levelsevencauses.id")
									.select("problems.name, problems.id as causa_from0,
											 levelonecauses.content AS causa_content1, levelonecauses.problem_id as causa_from1, levelonecauses.id AS causa_me1,
											 leveltwocauses.content AS causa_content2, leveltwocauses.levelonecause_id as causa_from2, leveltwocauses.id AS causa_me2,
											 levelthreecauses.content AS causa_content3, levelthreecauses.leveltwocause_id as causa_from3, levelthreecauses.id AS causa_me3,
											 levelfourcauses.content AS causa_content4, levelfourcauses.levelthreecause_id as causa_from4, levelfourcauses.id AS causa_me4,
											 levelfivecauses.content AS causa_content5, levelfivecauses.levelfourcause_id as causa_from5, levelfivecauses.id AS causa_me5,
											 levelsixcauses.content AS causa_content6, levelsixcauses.levelfivecause_id as causa_from6, levelsixcauses.id AS causa_me6,
											 levelsevencauses.content AS causa_content7, levelsevencauses.levelsixcause_id as causa_from7, levelsevencauses.id AS causa_me7,
											 leveleightcauses.content AS causa_content8, leveleightcauses.levelsevencause_id as causa_from8, leveleightcauses.id AS causa_me8
											 ")
									.where("problems.id = ?", params[:id])

		gon.problem_effects = Problem.joins(:leveloneeffect)
									 .joins("LEFT OUTER JOIN leveltwoeffects ON leveltwoeffects.leveloneeffect_id = leveloneeffects.id")
									 .joins("LEFT OUTER JOIN levelthreeeffects ON levelthreeeffects.leveltwoeffect_id = leveltwoeffects.id")
									 .joins("LEFT OUTER JOIN levelfoureffects ON levelfoureffects.levelthreeeffect_id = levelthreeeffects.id")
									 .joins("LEFT OUTER JOIN levelfiveeffects ON levelfiveeffects.levelfoureffect_id = levelfoureffects.id")
									 .joins("LEFT OUTER JOIN levelsixeffects ON levelsixeffects.levelfiveeffect_id = levelfiveeffects.id")
									 .joins("LEFT OUTER JOIN levelseveneffects ON levelseveneffects.levelsixeffect_id = levelsixeffects.id")
									 .joins("LEFT OUTER JOIN leveleighteffects ON leveleighteffects.levelseveneffect_id = levelseveneffects.id")
									 .select("problems.name, problems.id as causa_from0,
									 		  leveloneeffects.content AS efecto_content1, leveloneeffects.problem_id as efecto_from1,	
											  leveltwoeffects.content AS efecto_content2, leveltwoeffects.leveloneeffect_id as efecto_from2,
											  levelthreeeffects.content AS efecto_content3, levelthreeeffects.leveltwoeffect_id as efecto_from3,
											  levelfoureffects.content AS efecto_content4, levelfoureffects.levelthreeeffect_id as efecto_from4,
											  levelfiveeffects.content AS efecto_content5, levelfiveeffects.levelfoureffect_id as efecto_from5,
											  levelsixeffects.content AS efecto_content6, levelsixeffects.levelfiveeffect_id as efecto_from6,
											  levelseveneffects.content AS efecto_content7, levelseveneffects.levelsixeffect_id as efecto_from7,
											  leveleighteffects.content AS efecto_content8, leveleighteffects.levelseveneffect_id as efecto_from8")
										.where("problems.id = ?", params[:id])
		puts gon.problem_effects
		puts gon.problem_causes
		@problem = Problem.find(params[:id])
	end

	def update
		@problem = Problem.find(params[:id])
		@problem.update_attributes(params[:problem])
		flash[:notice] = "Programa editado correctamente."
		redirect_to edit_problem_path(@problem)
		
	
	end

	def destroy
		@problem = Problem.find(params[:id])
		@Problem.destroy
		flash[:notice] = "Programa borrado correctamente."
		redirect_to problems_path
	end

end
