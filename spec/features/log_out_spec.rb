require 'rails_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'log out' do
    it 'enables you to log out once you have logged in' do
      visit ('/')
      click_on 'signup'
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'signup'
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'Login'
      click_on 'logout'
      expect(page).to have_content 'Log in'
      expect(page).to have_content 'Sign up'
    end
  end
end