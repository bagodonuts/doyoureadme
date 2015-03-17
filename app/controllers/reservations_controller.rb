class ReservationsController < ApplicationController
  def index
    @user = User.find(reservation_params[:user_id])
    @reservations = @user.reservations
    @seminars = @user.seminars.order(:starts_at)
  end
  def create
    @seminar = Seminar.find(reservation_params[:seminar_id])
    reservation = Reservation.new(reservation_params)
    reservation.save

    flash[:notice] = "You are registered."
    redirect_to @seminar
  end

  def destroy
    @user = User.find(reservation_params[:user_id])
    @reservation = Reservation.find(reservation_params[:id])
    @reservation.destroy
    redirect_to user_reservations_path(@user)
  end

  private

  def reservation_params
    params.permit(:user_id, :seminar_id, :id)
  end
end
