require 'rails_helper'

RSpec.describe AttendeesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      seminar = FactoryGirl.create(:seminar)
      get :index, {seminar_id: seminar.id }
      expect(response).to have_http_status(:success)
    end
  end

end
