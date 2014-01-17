require 'open-uri'
require 'json'

puts "Enter an origin address:"

input1 = gets.gsub(" ","+")
origin = input1.rstrip

puts "Enter a destination address:"

input2 = gets.gsub(" ","+")
destination = input2.rstrip

json_data = open("http://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false").read

data = JSON.parse(json_data)

data1 = data["routes"]

data2 = data1[0]["legs"]

time = data2[0]["duration"]["text"]

miles = data2[0]["distance"]["text"]

puts "Total travel time driving: "+time.to_s
puts "Total distance traveled: "+miles.to_s

