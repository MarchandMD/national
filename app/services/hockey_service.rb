class HockeyService
  def schedule
    get_url("/api/v1/schedule?season=20232024")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://statsapi.web.nhl.com/")
  end
end
