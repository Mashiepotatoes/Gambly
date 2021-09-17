class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @favorites = current_user.favorites
  end

  def new
  end

  def create
    # if the user is not signed_in then you respond with a redirect
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.experience = Experience.find(params[:experience_id])
    if @favorite.save
      redirect_to @favorite.experience
    end
  end
end
