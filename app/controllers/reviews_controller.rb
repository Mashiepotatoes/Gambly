class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @review = Review.new
    @experience = Experience.find(params[:experience_id])
    @search_existing_reviews = Review.find_by(experience_id: @experience.id, user_id: current_user.id)

    # check if this is the first review
    if @search_existing_reviews.nil?
      render :new
    else
      # check if current user has already reviewed this
      if @search_existing_review.user == current_user
        flash[:alert] = "You have already reviewed this experience!"
        redirect_to experience_path(@experience)
      else
        render :new
      end
    end
  end

  def create
    @review = Review.new(review_params)
    @experience = Experience.find(params[:experience_id])
    @review.experience_id = @experience.id
    @review.user_id = current_user.id

    if @review.save
      redirect_to experience_path(@experience)
    else
      flash[:alert] = "Something went wrong. Please try again."
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:experience_id])
    @review = Review.find_by(experience_id: @experience.id, user_id: current_user.id)

    if @review.nil?
      redirect_to experience_path(@experience)
      flash[:alert] = "You are not the user that wrote this review!"
    elsif @review.user_id == current_user.id
      render :edit
    else
      redirect_to experience_path(@experience)
      flash[:alert] = "Error, please try again!"
    end
  end

  def update
    @experience = Experience.find(params[:experience_id])
    @review = Review.find(params[:id])
    @review.update(review_params)

    if @review.update(review_params)
      redirect_to experience_path(@experience)
      flash[:alert] = "Review has been updated"
    else
      render :edit
      flash[:alert] = "Review failed to update please try again"
    end
  end

  def destroy
    @review = Review.find_by(id: params[:id], user_id: current_user.id)
    @experience = Experience.find(params[:experience_id])

    if @review.nil?
      flash[:alert] = "You are not the user that wrote this review!"
    elsif @review.user_id == current_user.id
      @review.destroy
    else
      flash[:alert] = "Error, please try again!"
    end
    redirect_to experience_path(@experience)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :title)
  end
end
