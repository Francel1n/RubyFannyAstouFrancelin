puts "Comment tu t'appelles ?"
inp = gets
puts "Et comment vas-tu"
puts inp
puts "?"

require 'rubygems'
require 'json'

s = '{"gold":1271,"silver":1284, "platinum": 1270}'
obj = JSON.parse(s)

puts obj["gold"]
puts obj["silver"]
puts obj["platinum"]
