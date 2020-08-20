require 'rails_helper'
require 'helpers/first_walk_helper'

RSpec.describe 'Theresa', type: :system do
  describe 'create page' do
    include FirstWalkHelper
    it 'enables you to add a new walk' do
      add_first_walk
      expect(page).to have_content 'Canalside walk'
      expect(page).to have_content 'A beautiful long walk by the water'
      expect(page).to have_content 'Length of walk: 5 km'
    end
  end
end