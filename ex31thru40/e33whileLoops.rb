#obviously executes code in its block until its condition is false
#methods must be defined before they are used
def loopTime(a,b,c)
	while a < b
		puts "At the top a is #{a}"
		c.push(a)
		a+= 1
		puts "numbers now ", c
		puts "at the bottom i is #{a}"
	end
end
i = 0
puts "input a number: "
input = $stdin.gets.chomp.to_i
numbers = []
loopTime(i,input,numbers)

puts "the numbers, after the function is run!!!!!: "
numbers.each do |num|
	puts num
end
