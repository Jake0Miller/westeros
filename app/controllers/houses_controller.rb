class HousesController < ApplicationController
  def index
    @facade = HousesFacade.new
    binding.pry
  end
end
