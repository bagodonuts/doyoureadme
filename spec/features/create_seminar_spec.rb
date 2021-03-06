require 'rails_helper'

feature "Signed-in user clicks to create a new seminar" do

  before(:each) do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
  end

  scenario "they save the seminar and see the new seminar's details" do
    visit seminars_url

    click_link 'Add New Seminar'

    expect(current_path).to eq(new_seminar_path)

    fill_in "Title", with: "Aristotle and Plato"
    fill_in "Description", with: "Aristote and Plato: Buddy Movie"
    fill_in "Tutor", with: "Adam Sandler"
    fill_in "Conference URL", with: "http://zoom.us/path"
    fill_in "Starts at", with: DateTime.now.to_s
    fill_in "Capacity", with: 15

    #select (Time.now.year - 1).to_s, :from => "movie_released_on_1i"

    # If you're taking advantage of the HTML 5 date field in Chrome,
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s

    click_button 'Create Seminar'

    expect(current_path).to eq(seminar_path(Seminar.last))

    expect(page).to have_text('Aristotle and Plato')
  end
end
