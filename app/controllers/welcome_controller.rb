class WelcomeController < ApplicationController
	#layout Applicatioon_black

	before_filter :authenticate_user!, :except => [:index, :black, :about]

	def index
		@name = 'Fábio Bastos'
		#debugger
	end
	def black 
		render :layout => "application_black" 
	end

	def about

	end
end