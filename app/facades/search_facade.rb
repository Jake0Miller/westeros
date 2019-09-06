class SearchFacade
  def initialize(house)
    @house = house
  end

  def house
    @_house ||= House.new(house_data(@house)[:data][0][:attributes])
  end

  def surname
    house.surname
  end

  def members
    house.members
  end

  private

  def service
    @_service = WesterosService.new
  end

  def house_data(house)
    @_house_data = service.house_data(house)
  end
end
