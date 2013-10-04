class User < ActiveRecord::Base
	MALE = 1
	FEMALE = 1 #Palavras todas em maiusculo é constante

	#Validations
	validates :name, :presence => true, :allow_blank => false #validates_presence_of :name ...
	validates :email, :presence => true, :allow_blank => false

	#Associations

	#Scopes

	#Public methods




end