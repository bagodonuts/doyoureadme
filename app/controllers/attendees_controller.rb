class AttendeesController < ApplicationController
  def index
    @seminar = Seminar.find(attendee_params[:seminar_id])
    @attendees = @seminar.users
  end

  private
  def attendee_params
    params.permit(:seminar_id)
  end
end
