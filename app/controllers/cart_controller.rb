class CartController < ApplicationController
  def show
  end

  def cart_info
    total = 0
    experience_params.map do |item|
      experience = Experience.find(item['experienceId'])
      total += experience.price * item['amount'].to_i
      item.merge!({ experiencePrice: experience.price, experienceName: experience.name })
    end
    respond_to do |format|
      format.json { render json: { items: experience_params, total: total } }
    end
  end

  def experience_params
    params.permit!["_json"]
  end
end
