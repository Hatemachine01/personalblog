require 'rails_helper'

describe 'Post navigation' do
  describe 'creation' do
    it 'can be created' do
      visit new_post_path

      fill_in 'post[title]', with: "Kanye and I"
      fill_in 'post[content]', with: "Complicated"
  
  

      click_on "Submit"

      expect(page).to have_content("Kanye")
    end
  end
end