require 'open-uri'
require 'json'

puts "Enter an address:"

input = gets.gsub(" ","+")
address = input.rstrip

json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false").read
data = JSON.parse(json_data)

data1 = data["results"]

lat = data1[0]['geometry']["location"]["lat"]
lng = data1[0]['geometry']["location"]["lng"]

puts "Latitude: "+lat.to_s
puts "Longitude: "+lng.to_s
