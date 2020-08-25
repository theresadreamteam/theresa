require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  xdescribe 'walk page' do
    # include FirstWalkHelper
    it 'enables you to update an existing walk' do
      walk_1 = Walk.create!(title:"Walk", description: "Walky walk", coordinates_start: "123")
      visit walks_path
      click_link walk_1.title
      expect(page).to have_button 'Delete'
    end
  end
end
