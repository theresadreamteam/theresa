require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'log out' do
    include FirstWalkHelper
    it 'enables you to log out once you have logged in' do
      sign_up
      sign_in
      click_on 'logout'
      expect(page).to have_content 'Log in'
      expect(page).to have_content 'Sign up'
    end
  end
end