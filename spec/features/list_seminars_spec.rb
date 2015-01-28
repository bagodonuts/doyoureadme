require "rails_helper"

feature "User visits the seminar listing page" do
  scenario "they see all the seminars" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminars_url

    expect(page).to have_text(seminar.title)
  end

  scenario "they click on a seminar link and go to the seminar detail page" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminars_url

    click_link(seminar.title)
    expect(current_path).to eq(seminar_path(seminar))
  end
end
