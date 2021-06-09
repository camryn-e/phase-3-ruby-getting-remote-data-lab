# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    @url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        responses = JSON.parse(self.get_response_body)
        responses.collect do |response|
            response 
        end
    end

end