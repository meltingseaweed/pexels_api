require "faraday"
require "json"

class MyFaradayConnection
  
  def get_all_collections
    conn = Faraday.new(
      url: 'https://api.pexels.com/v1/collections/featured',
      params: {param: '1'},
      headers: {'Content-Type' => 'application/json'}
      )
    end

    def get_response
      response = conn.get('get', { boom: 'zap' }, { 'User-Agent' => 'myapp' })
    end

    def get_one_collection(id)
      conn = Faraday.new(
      url: "https://api.pexels.com/v1/collections/:#{id}", # Put on double quotes here
      params: {param: '1'},
      headers: {'Content-Type' => 'application/json'}
      )
    end
end

Collection Media
GET https://api.pexels.com/v1/collections/:id