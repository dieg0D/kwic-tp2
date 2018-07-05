require 'net/http'
require 'json'
require 'uri'

module DBLP
  def self.start
    puts "Informe nome de busca: "
    query = gets.chomp
  end

  def self.search
    name = start
    url = URI.parse("http://dblp.org/search/publ/api?q=#{name}&format=json")
    res = Net::HTTP.get_response(url)
    res_hash = JSON.parse(res.body)
  end

  def self.all_titles
    dblp_titles = []
    res_hash = search
    res_hash['result']['hits']['hit'].each do |title|
      dblp_titles << title['info']['title']
    end
    return dblp_titles
  end
end
