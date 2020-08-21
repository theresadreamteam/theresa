require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'sign in' do
    include FirstWalkHelper
    it 'enables you to add a new user' do
      sign_up
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'Login'
      expect(page).to have_content 'Theresa'
    end
  end
end