class Family
  attr_reader

  def intiailize(data)
    @surname = data[:name]
    @members = data[:members].map {|member| member[:name]}
  end
end
