require 'spec_helper' 

describe User do 
	it 'create an user' do  #Teste unitário
		user = User.new :name => 'Francieli', :email => 'francielifrv@gmail.com', :age => '20'	
		user.save.should be_true
	end

	it 'Fail to create a user when name is blank' do
		user = User.new :email => 'francielifrv@gmail.com', :age => '20'	
		user.save.should be_false
	end

	it 'Fail to create a user when email is blank' do
		user = User.new :name => 'Francieli', :age => '20'	
		user.save.should be_false
	end
end