require 'rails_helper'

describe 'Post navigation' do
	
	before do
		@user = User.create(first_name: 'Admin' , last_name:'Admin' , 
							email: 'admin@gmail.com', password: "password", 
							password_confirmation: "password")
	
    	login_as(@user, :scope => :user)
  	end
  
  describe 'creation' do
    it 'can be created' do
      visit new_post_path

      fill_in 'post[title]', with: "Kanye and I"
      fill_in 'post[content]', with: "Complicated"
  
  

      click_on "Create Post"

      expect(page).to have_content("Kanye")
    end
  end
end

