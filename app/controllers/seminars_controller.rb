class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.all
  end

  def show
    @seminar = Seminar.find(params[:id])
  end

  def edit
    @seminar = Seminar.find(params[:id])
  end

  def update
    @seminar = Seminar.find(params[:id])
    seminar_params = params.require(:seminar).
                            permit(:title, :description, :tutor, :conference_url, :starts_at)
    @seminar.update(seminar_params)
    redirect_to @seminar
  end
end
