class WesterosService
  def house_data(house)
    get_json("house/#{house}")
  end

  private

  def conn
    @_conn ||= Faraday.new(url: "http://westerosapi.herokuapp.com/api/v1/") do |faraday|
      faraday.params["api_key"] = ENV["API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
