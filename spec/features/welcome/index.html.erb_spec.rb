require 'spec_helper'

describe ".index", :type => :feature do
	/
	it "access index page" do 
		visit index_path 
		page.should have_content("Francieli")
	end

	it 'Change to about page after click on link' do
		visit index_path
		click_link 'Saiba mais sobre nos'
		page.should have_content 'Sobre'
	end
	/
	
end