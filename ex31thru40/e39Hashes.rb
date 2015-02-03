require './dict.rb'
# a hash is short for hashmap, or dictionary.
# the cool thing about hashes is anything can be an index.

#mapping of state abbreviations
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Wisconsin' => 'WI'
}

cities = {
	'CA' => 'San Francisco',
	'WI' => 'Milwaukee',
	'FL' => 'Jacksonville'
}

#adding more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#puts states
puts '-' * 10
puts "Wisconsin has: #{cities[states['Wisconsin']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every abbreviation
puts '-' * 10
states.each do |state, abbrev|
	puts "#{state} is abbreviated #{abbrev}"
end

#puts every city in a state
puts '-' * 10
cities.each do |abbrev, city|
	puts "#{abbrev} has the city #{city}"
end

#both!
puts '-' * 10
states.each do |state, abbrev|
	city = cities[abbrev]
	puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
#ruby says nil when something isn't there
state = states['Texas']

if !state
	puts "Sorry, no Texas!"
end

#default values using ||= with the nil result
city = cities['TX']
city ||='Does not Exist'
puts "the city for the state 'TX' is: #{city}"
