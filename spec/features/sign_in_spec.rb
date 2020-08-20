require 'rails_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'sign in' do
    it 'enables you to add a new user' do
      visit ('/')
      click_on 'signup'
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'signup'
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'Login'
      expect(page).to have_content 'Theresa'
    end
  end
end