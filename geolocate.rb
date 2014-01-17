require 'open-uri'
require 'json'

puts "Enter an address"

input = gets.gsub(" ","+")
address = input.rstrip

json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false").read
data = JSON.parse(json_data)

data1 = data["results"]

puts data1[0]['geometry']["location"]
