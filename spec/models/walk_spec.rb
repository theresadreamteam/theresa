require 'rails_helper'

RSpec.describe Walk, type: :model do
  it "it valid with valid attributes" do
    expect(Walk.new).to be_valid
  end

  it "it not valid with no title" do
    #not yet implemented
  end

  it "it is not valid with no description" do
    #not yet implemented
  end

end
