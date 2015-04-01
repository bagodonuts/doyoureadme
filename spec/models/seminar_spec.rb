require 'rails_helper'

RSpec.describe Seminar, type: :model do
  before(:each) do
    @seminar = FactoryGirl.build(:seminar)
  end

  it "should be valid from default factory" do
    expect(@seminar).to be_valid
  end

  it "should not be valid without a title" do
    @seminar.title = nil
    expect(@seminar).not_to be_valid
  end

  it "should not be valid without a starting time" do
    @seminar.starts_at = nil
    expect(@seminar).not_to be_valid
  end

  it "should not be valid without a host" do
    @seminar.host = nil
    expect(@seminar).not_to be_valid
  end
  it "should be valid without a description" do
    @seminar.description = nil
    expect(@seminar).to be_valid
  end
  it "should be valid with a 1024 character description" do
    desc = "x" * 1024
    @seminar.description = desc
    expect(@seminar).to be_valid
    expect(@seminar.save).to be_true    
  end
end
