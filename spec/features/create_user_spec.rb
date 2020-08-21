require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'create user' do
    include FirstWalkHelper
    it 'enables you to add a new user' do
      visit ('/')
      click_on 'signup'
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'signup'
      expect(page).to have_content 'Login'
    end
  end
end