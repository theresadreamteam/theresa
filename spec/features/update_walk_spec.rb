require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'walk page' do
    include FirstWalkHelper
    it 'enables you to update an existing walk' do
      sign_up
      sign_in
      add_first_walk
      # user_1 = User.create!(username: "Test", password: "123")
      # user_1.logged_in(username: "Test", password: "123") == true
      # walk_1 = Walk.create!(title:"Walk", description: "Walky walk", coordinates_start: "123")
      visit walks_path
      click_link walk_1.title
      expect(page).to have_button 'Edit'
    end
  end
end
