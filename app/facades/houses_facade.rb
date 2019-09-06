class HousesFacade
  def initialize(name)
    @name = name.capitalize
  end

  def houses
    @houses ||= houses_data
  end

  def house_names
    @house_names ||= houses.each_with_object(Array.new) {|house,array| array << house[:name]}
  end

  def surname
    @name
  end

  def members
    id = houses.find {|house| house[:name] == @name}[:id]
    house_data(id).map {|data| data[:name]}
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
