class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
      f.params['key'] = ENV['POTTER_API_KEY']
    end
  end
end
