require "rails_helper"

feature "User visits the seminar listing page" do
  scenario "they see all the seminars" do
    FactoryGirl.create(:seminar, title: "Seminar 1")
    FactoryGirl.create(:seminar, title: "Seminar 2")
    FactoryGirl.create(:seminar, title: "Seminar 3")

    visit seminars_url

    expect(page).to have_text("Seminars")
    expect(page).to have_text("Seminar 1")
    expect(page).to have_text("Seminar 2")
    expect(page).to have_text("Seminar 3")
  end
end
