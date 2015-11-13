class ProjectsController < ApplicationController

	def index

		@projects = %w(test1 test2 test3)

	end
end
