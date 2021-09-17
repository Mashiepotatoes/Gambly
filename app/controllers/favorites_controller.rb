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
    redirect_to @favorite.experience if @favorite.save
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.user = current_user
    redirect_to @favorite if @favorite.destroy
  end
end
