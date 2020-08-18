require 'rails_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'create page' do
    it 'enables you to add a new walk' do
      visit ('/')
      click_on 'add walk'
      fill_in 'walk_title', with: 'Canalside walk'
      fill_in 'walk_description', with: 'A beautiful long walk by the water'
      fill_in 'walk_coordinates_start', with: '51.544514, -0.023015'
      fill_in 'walk_coordinates_end', with: '51.544514, -0.023015'
      fill_in 'walk_distance', with: '5'
      click_on 'add this walk'
      expect(page).to have_content 'Canalside walk'
      expect(page).to have_content 'A beautiful long walk by the water'
      expect(page).to have_content 'Length of walk: 5 km'
    end
  end
end