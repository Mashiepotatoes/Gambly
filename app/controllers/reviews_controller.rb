class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @review = Review.new(review_params)
    @experience = Experience.find(params[:experience_id])
    @review.experience = @experience
    if @review.save
      redirect_to experience_path(@experience)
    else
      render @new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
