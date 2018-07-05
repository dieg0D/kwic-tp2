require_relative '../modules/dblp/dblp.rb'
require 'net/http'
require 'json'
require 'uri'

describe DBLP do

    it 'return status code 200' do
        query = 'Rodrigo'
        url = URI.parse("http://dblp.org/search/publ/api?q=#{query}&format=json")
        res = Net::HTTP.get_response(url)
       
        expect(res.code).to eq('200') 
    end

end