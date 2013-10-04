require 'spec_helper' 

describe User do 
	it 'create an user' do  #Teste unitário
		user = User.new :name => 'Francieli', :email => 'francielifrv@gmail.com', :age => '20'	
		user.save.should be_true
	end
end