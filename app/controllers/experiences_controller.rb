class ExperiencesController < ApplicationController
  def index
    if params[:query].present?
      @experiences = Experience.search_by_name_and_details(params[:query])
    else
      @experiences = Experience.all
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end
end
