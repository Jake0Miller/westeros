class SearchController < ApplicationController
  def show
    house = params[:house]
    binding.pry
    @facade = SearchFacade.new(house)
  end
end
