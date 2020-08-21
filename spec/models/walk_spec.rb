require 'rails_helper'

RSpec.describe Walk, type: :model do
  subject {
    described_class.new(title: "First Walk",
                        description: "Beautiful Walk",
                        user_id: 1,
                        coordinates_start: "1.000 , 2.000")
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid with no title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is is not valid with no description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with no start_coordinate" do
    subject.coordinates_start = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with no user_id" do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

end
