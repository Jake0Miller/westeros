class SearchController < ApplicationController
  def show
    @facade = SearchFacade.new(params[:house])
  end
end
