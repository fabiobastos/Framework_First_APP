class WelcomeController < ApplicationController
	#layout Applicatioon_black

	def index
		@name = 'Francieli'
	end
	def black 
		render :layout => "application_black" 
	end

	def about

	end
end