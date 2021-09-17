class FavoritesController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]

  def index
    @favorites = current_user.favorites
  end

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
