class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	MALE = 1
	FEMALE = 2 #Palavras todas em maiusculo é constante

	#Validations
	validates :name, :presence => true, :allow_blank => false #validates_presence_of :name ...
	validates :email, :presence => true, :allow_blank => false
	validates :gender, :presence => true, :if => :adulthood
	validates :email, uniqueness: true

	#Associations
	has_many :bills, :dependent => :destroy
	has_many :comments, as: :commentable
	
	#Scopes

	#Callbacks

	after_create :send_welcome_email

	#Public methods
	def adulthood
		self.age.present? and self.age >= 18
	end

	def send_welcome_email
		AppMailer::UserMailer.welcome_message(self.name, self.email).deliver!
	end




end