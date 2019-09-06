class SearchFacade
  def initialize(house)
    @house = house
  end

  def family
    @family ||= Family.new(family_data(@house)[:data][0][:attributes])
  end

  def surname
    @family.surname
  end

  def members
    @family.members
  end

  private

  def service
    @_service = WesterosService.new
  end

  def family_data(house)
    @_family_data = service.family_data(house)
  end
end
