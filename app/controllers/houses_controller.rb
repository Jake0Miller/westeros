class HousesController < ApplicationController
  def index
    @facade = HousesFacade.new('all')
  end

  def show
    @facade = HousesFacade.new(params[:house])
  end
end
