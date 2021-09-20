class CartController < ApplicationController
  def show
  end

  def cart_info
    total = 0
    experience_params.each do |item|
      experience = Experience.find(item['experienceId'])
      total += (experience.price_cents / 100) * item['pax'].to_i
      item.merge!({ experiencePrice: experience.price_cents, experienceName: experience.name })
    end
    respond_to do |format|
      format.json { render json: { items: experience_params, total: total } }
    end
  end

  def experience_params
    params.permit!["_json"]
  end
end
