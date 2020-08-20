require 'rails_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'comment on a walk' do
    it 'shows your comment on the walk page' do
      visit ('/')
      click_on 'add walk'
      fill_in 'walk_title', with: 'Canalside walk'
      fill_in 'walk_description', with: 'A beautiful long walk by the water'
      fill_in 'walk_coordinates_start', with: '51.544514, -0.023015'
      fill_in 'walk_coordinates_end', with: '51.544514, -0.023015'
      fill_in 'walk_distance', with: '5'
      click_on 'add this walk'
      visit ('/walks/1')
      fill_in 'comment_body', with: 'This one really is lovely'
      fill_in 'comment_commenter', with: 'Warbling Walker'
      click_on 'add comment'
      expect(page).to have_content 'Warbling Walker says'
      expect(page).to have_content 'This one really is lovely'
    end
  end
  
end
