class SearchFacade
  def initialize(house)
    @house = house
  end

  def families
    @families = family_data.map {|data| Family.new(data)}
  end

  private

  def service
    @_service = WesterosService.new
  end

  def family_data
    @_family_data = service.family_data(@house)
  end
end
