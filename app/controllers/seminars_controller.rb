class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.order(:starts_at)
  end

  def show
    @seminar = Seminar.find(params[:id])
  end

  def edit
    @seminar = Seminar.find(params[:id])
  end

  def update
    @seminar = Seminar.find(params[:id])
    @seminar.update(seminar_params)
    redirect_to @seminar
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    @seminar.save
    redirect_to @seminar
  end

  private
  def seminar_params
    params.require(:seminar).
      permit(:title, :description, :tutor, :conference_url, :starts_at)
  end
end
