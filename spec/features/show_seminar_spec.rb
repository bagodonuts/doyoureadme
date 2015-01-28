require "rails_helper"

feature "User visits a seminar detail page" do
  scenario "they see the seminar title" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminar_url(seminar)

    expect(page).to have_text(seminar.title)
  end
  scenario "they can click on a link to all seminars and see the seminars list page" do
    seminar = FactoryGirl.create(:seminar, title: "SuperDooper")

    visit seminar_url(seminar)

    click_link("All Seminars")

    expect(current_path).to eq(seminars_path)
  end
end
