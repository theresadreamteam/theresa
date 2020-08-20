require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(username: "test",
                        password: "test")
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid with no username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it "is is not valid with no description" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

end
