class User < ActiveRecord::Base
	
	#Validations
	validates :name, :presence => true, :allow_blank => false #validates_presence_of :name ...
	validates :email, :presence => true, :allow_blank => false

	#Associations

	#Scopes

	#Public methods




end