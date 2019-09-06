class House
  attr_reader :surname, :members

  def initialize(data)
    @surname = data[:name]
    @members = data[:members].map {|member| member[:name]}
  end
end
