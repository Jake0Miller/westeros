class HousesController < ApplicationController
  def index
    @facade = HousesFacade.new
  end

  def show
    @facade = HouseFacade.new
  end
end
