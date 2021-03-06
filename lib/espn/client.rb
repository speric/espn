module ESPN
  module Client
    API_ENDPOINT = "http://api.espn.com/v1/"
    
    def get(path, options={})
      options[:apikey] = ESPN.apikey
      response = HTTParty.get(API_ENDPOINT + path, :query => options)
      parse_response(response)
    end
    
    def parse_response(response)
      response
    end
  end
end