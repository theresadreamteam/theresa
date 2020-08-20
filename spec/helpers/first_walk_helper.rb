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
end