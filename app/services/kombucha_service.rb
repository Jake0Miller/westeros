class KombuchaService
  def houses_data
    get_json("")
  end

  def house_data(id)
    get_json("#{id}")
  end

  private

  def conn
    @_conn ||= Faraday.new(url: "https://westeros-as-a-service.herokuapp.com/api/v1/house") do |faraday|
      faraday.headers["x_api_key"] = ENV["KOMBUCHA_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
