class ExperiencesController < ApplicationController
  def index
    if params[:query].present?
      @experiences = Experience.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end
end
