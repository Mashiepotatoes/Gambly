class FavoritesController < ApplicationController
  def new
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.experience = Experience.find(params[:experience_id])
    if @favorite.save
      respond_to do |format|
        format.json { render json: { status: "favorite successfully created" } }
      end
    end
  end
end
