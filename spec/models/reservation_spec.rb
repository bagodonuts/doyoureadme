require 'rails_helper'

RSpec.describe Reservation, :type => :model do
  before(:each) do
    @reservation = FactoryGirl.create(:reservation)
  end
  it "has a valid factory" do
    expect(@reservation).to be_valid
  end

  it "is invalid without a user" do
    @reservation.user = nil
    expect(@reservation).not_to be_valid
  end

  it "is invalid without a seminar" do
    @reservation.seminar = nil
    expect(@reservation).not_to be_valid
  end

end
