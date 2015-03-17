require "rails_helper"

feature "Reservation Management" do

  before(:each) do
    @user = FactoryGirl.create(:user)
    login_as(@user, scope: :user)
    @seminar = FactoryGirl.create(:seminar, title: "SuperDooper")
  end

  scenario "User signs up for a seminar" do

    visit seminar_url(@seminar)

    click_button "Add to My Seminars"

    expect(page).to have_text("You are registered")

    visit user_reservations_url(@user)

    expect(page).to have_text(@seminar.title)
  end

  scenario "User cancels a seminar" do
    #FactoryGirl.create(:reservation, user: @user, seminar: @seminar)
    visit seminar_url(@seminar)
    click_button "Add to My Seminars"
    visit user_reservations_url(@user)
    click_link "Cancel"
    expect(page).not_to have_text(@seminar.title)
  end

end
