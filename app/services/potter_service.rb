class PotterService
  def members_by_house(house)
    response = conn.get('characters') do |req|
      req.params['orderOfThePhoenix'] = true
      req.params['house'] = house
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
      f.params['key'] = ENV['POTTER_API_KEY']
    end
  end
end
