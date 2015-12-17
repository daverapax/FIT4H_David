class QuestionsController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@questions = @project.questions
	end
end
