# require "faraday"
require "json"

class MyPexel
  include HTTParty
  format :json

  def get_all_collections
    response = HTTParty.get("https://api.pexels.com/v1/collections", headers: { "Authorization" => "#{ENV['pexel_api_key']}" })
  end

  def get_photos_from_collection(id)
    photo_response = HTTParty.get("https://api.pexels.com/v1/collections/#{id}", headers: { "Authorization" => "#{ENV['pexel_api_key']}" })
  end
end
