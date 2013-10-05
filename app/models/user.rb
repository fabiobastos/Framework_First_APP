class User < ActiveRecord::Base
	MALE = 1
	FEMALE = 1 #Palavras todas em maiusculo é constante

	#Validations
	validates :name, :presence => true, :allow_blank => false #validates_presence_of :name ...
	validates :email, :presence => true, :allow_blank => false
	validates :gender, :presence => true, :if => :adulthood
	validates :email, uniqueness: true

	#Associations

	#Scopes

	#Public methods
	def adulthood
		self.age.present? and self.age >= 18
	end




end