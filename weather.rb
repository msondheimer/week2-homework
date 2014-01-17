require 'open-uri'
require 'json'

puts "Enter an address:"

input = gets.gsub(" ","")
address = input.rstrip

json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{address}&units=imperial").read
data = JSON.parse(json_data)

temperature = data["main"]["temp"]
puts temperature.to_s+"f"