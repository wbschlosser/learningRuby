def cheeseAndCrackers(cheese, crackers)
	puts "you have #{cheese} cheeses!"
	puts "You have #{crackers} crackers!"
	print "that's enough for a party, get a blanket"
	puts "\n"
end

puts "not in the function: we can give the function numbers directly\n"
cheeseAndCrackers(20,30)

puts "Not in the function: OR we can user variables from our script\n"
amount_of_cheese=10
amount_of_crackers=50
cheeseAndCrackers(amount_of_cheese, amount_of_crackers)

puts "Not in the function: doin math inside"
cheeseAndCrackers(10+20,5+6)

puts "not in the function: and we can combine variables and math: \n"
cheeseAndCrackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# program arguments
arg1, arg2 = ARGV

#converted to ints to do math, .to_f for decimal
arg1 = arg1.to_i
arg2 = arg2.to_i
amount_of_cheese = arg1 / 30
amount_of_crackers = arg2 * 2
puts "Argument input totally works"
cheeseAndCrackers(amount_of_cheese, amount_of_crackers)

#prompting for user input, converts to ints, again .to_f for decimal
puts "how much cheese?"
amount_of_cheese = $stdin.gets.chomp.to_i
puts "how many crackers?"
amount_of_crackers = $stdin.gets.chomp.to_i

#math is fun, cheese is better
amount_of_cheese = amount_of_cheese + 100
amount_of_crackers = amount_of_crackers + 50
cheeseAndCrackers(amount_of_cheese, amount_of_crackers)
