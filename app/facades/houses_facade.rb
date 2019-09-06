class HousesFacade
  def houses
    @houses ||= houses_data.each_with_object(Array.new) {|house,array| array << house[:name]}
  end

  private

  def service
    @_service = KombuchaService.new
  end

  def houses_data
    @_houses_data = service.houses_data
  end
end
