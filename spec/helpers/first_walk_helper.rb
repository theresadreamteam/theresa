module FirstWalkHelper
  def add_first_walk
    visit ('/')
    click_on 'add walk'
    fill_in 'walk_title', with: 'Canalside walk'
    fill_in 'walk_description', with: 'A beautiful long walk by the water'
    fill_in 'walk_coordinates_start', with: '51.544514, -0.023015'
    fill_in 'walk_coordinates_end', with: '51.544514, -0.023015'
    fill_in 'walk_distance', with: '5'
    click_on 'add this walk'
  end

  def sign_up
    visit ('/')
    click_on 'signup'
    fill_in 'Username', with: 'test'
    fill_in 'Password', with: 'test'
    click_on 'signup'
  end

  def sign_in
      fill_in 'Username', with: 'test'
      fill_in 'Password', with: 'test'
      click_on 'Login'
  end
end