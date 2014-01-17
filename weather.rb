require 'open-uri'
require 'json'

puts "Enter an address:"

input = gets.gsub(" ","+")
address = input.rstrip

json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false").read
data = JSON.parse(json_data)

data1 = data["results"]

lat = data1[0]['geometry']["location"]["lat"].round(2)
lon = data1[0]['geometry']["location"]["lng"].round(2)

json_data= open("http://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&units=imperial").read

data = JSON.parse(json_data)

temperature = data["main"]["temp"]
puts temperature.to_s+"f"