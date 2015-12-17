module ProjectsHelper
	def done(project)
			if project.past?
				"Abgelaufen"
			else
				distance_of_time_in_words_to_now(project)
		end
	end
end
