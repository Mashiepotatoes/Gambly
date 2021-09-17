class ExperiencesController < ApplicationController
  def index
    if params[:query].present?
      query = params[:query].split # Split query into an array of terms
      @experiences = []
      query.each do |term|
        results = Experience.search_by_name_and_details(term) # do a search for each of those terms individually
        @experiences.concat(results) # add each of those search results to experiences to experiences array and flatten array
      end
    else
      @experiences = Experience.all
    end

    # case filter.lowercase
    # when "North"
    #   @filtered_locations = Experience.where(params[:location] == 'North')
    # when "South"
    #   @filtered_locations = Experience.where(params[:location] == 'South')
    # when "East"
    # @filtered_locations = Experience.where(params[:location] == 'East')
    # when "West"
    # @filtered_locations = Experience.where(params[:location] == 'West')
    # end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def sample
    @random_experience = Experience.all.sample
  end
end
