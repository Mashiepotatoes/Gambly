class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
    @favorite = Favorite.find_by_experience_id(params[:id])
  end

  def sample
    @random_experience = Experience.all.sample
  end

  def results
    if params[:query].present?
      # main search
      puts params[:location]
      query = params[:query].split # Split query into an array of terms
      @experiences = []
      query.each do |term|
        results = Experience.search_by_name_and_details(term) # do a search for each of those terms individually
        @experiences.concat(results) # add each of those search results to experiences to experiences array and flatten array.
      end
    else
      @experiences = Experience.all
    end
  end

  def filter
    @experiences = filter_by_location(params[:filter])
  end

  private
  
  def filter_by_location(location)
    case location
    when 'North'
      filter_by_location_dir('North')
    when 'South'
      filter_by_location_dir('South')
    when 'East'
      filter_by_location_dir('East')
    when 'West'
      filter_by_location_dir('West')
    end
  end

  def filter_by_location_dir(direction)
    # Experience.find_by_location!(direction)
    Experience.where(location: direction)
  end
end
