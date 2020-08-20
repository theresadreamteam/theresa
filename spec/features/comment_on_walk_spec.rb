require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'comment on a walk' do
    include FirstWalkHelper
    it 'shows your comment on the walk page' do
      add_first_walk
      fill_in 'comment_body', with: 'This one really is lovely'
      fill_in 'comment_commenter', with: 'Warbling Walker'
      click_on 'add comment'
      expect(page).to have_content 'Warbling Walker says'
      expect(page).to have_content 'This one really is lovely'
    end
  end
  
end
