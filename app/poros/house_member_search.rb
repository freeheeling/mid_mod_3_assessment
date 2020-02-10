class HouseMemberSearch
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    conn = Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
      f.params['key'] = ENV['POTTER_API_KEY']
    end

    response = conn.get('characters') do |req|
      req.params['orderOfThePhoenix'] = true
      req.params['house'] = 'Gryffindor'
    end

    member_search_data = JSON.parse(response.body, symbolize_names: true)

    member_search_data.map do |member_data|
      Member.new(member_data)
    end
  end
end
