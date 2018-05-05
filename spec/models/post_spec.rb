require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Jon", last_name: "Snow")
      @post = Post.create(title: "Kanye and I", content: "it's complicated" , user_id: @user.id)
    end

    it 'should be able to be created if valid' do
      expect(@post).to be_valid
    end
  end
end