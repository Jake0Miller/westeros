class HousesFacade
  def houses
    @houses ||= houses_data
  end

  def house_names
    @house_names ||= houses.each_with_object(Array.new) {|house,array| array << house[:name]}
  end

  def house(name)
    
  end

  private

  def service
    @_service = KombuchaService.new
  end

  def houses_data
    @_houses_data = service.houses_data
  end

  def house_data(id)
    @_houses_data = service.house_data(id)
  end
end
