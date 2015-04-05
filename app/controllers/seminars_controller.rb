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
    @seminar.host ||= current_user
    if @seminar.update(seminar_params)
      redirect_to @seminar
    else
      render :edit
    end
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    @seminar.host = current_user
    if @seminar.save
      redirect_to @seminar
    else
      render :new
    end
  end

  private
  def seminar_params
    params.require(:seminar).
      permit(:title, :description, :tutor, :conference_url, :starts_at, :capacity)
  end
end
