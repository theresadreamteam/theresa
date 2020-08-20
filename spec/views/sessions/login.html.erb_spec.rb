require 'rails_helper'

RSpec.describe "sessions/login.html.erb", type: :view do
  xit 'has the word login on the page with a form' do
    visit ('/login')
    expect(page).to have_content('Log in')
  end
end
