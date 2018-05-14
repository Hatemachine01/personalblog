require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    it 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
	
	it 'Redirects user to root if route does not exist' do
	   visit "/urls'"
	  expect(current_path).to eq(root_path)
	end
  end
end
