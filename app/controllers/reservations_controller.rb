class ReservationsController < ApplicationController
  def index
    @user = User.find(reservation_params[:user_id])
    @seminars = @user.seminars
  end
  def add
    @seminar = Seminar.find(reservation_params[:seminar_id])
    reservation = Reservation.new(reservation_params)
    reservation.save

    flash[:notice] = "You are registered."
    redirect_to @seminar
  end

  private

  def reservation_params
    params.permit(:user_id, :seminar_id)
  end
end
