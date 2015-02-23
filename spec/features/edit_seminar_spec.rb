require "rails_helper"

feature "Authenticated user clicks to edit a seminar" do
  before(:each) do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    @seminar = go_to_seminar_edit_page
  end

  scenario "they land on the edit page for the seminar" do
    expect(current_path).to eq(edit_seminar_path(@seminar))
  end

  scenario "they see the seminar's title in an edit field" do
    expect(find_field('Title').value).to eq(@seminar.title)
  end

  scenario "they see the seminar's description in an edit field" do
    expect(find_field('Description').value).to eq(@seminar.description)
  end

  scenario "they see the seminar's tutor in an edit field" do
    expect(find_field('Tutor').value).to eq(@seminar.tutor)
  end

  scenario "they see the seminar's video conference url in an edit field" do
    expect(find_field('Conference URL').value).to eq(@seminar.conference_url)
  end
  scenario "they update the seminar and see the movie's updated details" do

    fill_in 'Title', with: "Updated Seminar Title"

    click_button 'Update Seminar'

    expect(current_path).to eq(seminar_path(@seminar))
  end


  def go_to_seminar_edit_page
    seminar = FactoryGirl.create(:seminar)
    visit seminar_url(seminar)
    click_link 'Edit'
    seminar
  end
end
