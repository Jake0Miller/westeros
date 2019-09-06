class Family
  attr_reader :surname, :members

  def initialize(api_data)
    @surname = api_data[:name]
    @members = api_data[:members].map {|member| member[:name]}
  end
end
