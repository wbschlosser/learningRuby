#obviously executes code in its block until its condition is false

i = 0
puts "input a number: "
input = $stdin.gets.chomp.to_i
numbers = []

	while i < input
		puts "At the top i is #{i}"
		numbers.push(i)
		i+= 1
		puts "numbers now ", numbers
		puts "at the bottom i is #{i}"
	end

puts "the numbers: "
numbers.each{|num| puts num}

