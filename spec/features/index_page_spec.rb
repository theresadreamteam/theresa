require 'rails_helper'

RSpec.describe 'Theresa', type: :system do
  xdescribe 'index page' do
    it 'shows the content "Theresa" on the index page' do
      visit ('/')
      expect(page).to have_content 'Theresa'
    end
  end
end