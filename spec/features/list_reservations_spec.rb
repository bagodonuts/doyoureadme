require "rails_helper"

feature "Reservation Management" do

  before(:each) do
    @user = FactoryGirl.create(:user)
    login_as(@user, scope: :user)
  end

  scenario "User clicks on 'Add Seminar' and sees a confirmation message" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminar_url(seminar)

    click_link("Add to My Seminars")

    expect(page).to have_text("You are registered")
  end

  scenario "User adds a seminar and sees it in his list of seminars" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminar_url(seminar)

    click_link("Add to My Seminars")

    visit user_reservations_url(@user)

    expect(page).to have_text("SuperDooper")
  end

  scenario "User deletes a seminar"
end
