print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you're #{age} years old, #{height} inches tall, and weigh #{weight} pounds"

print "enter a number: "
# gets.chomp.to_i converts user input to an integer
num1 = gets.chomp.to_i
print "enter a second number: "
num2 = gets.chomp.to_i

total = num1 + num2

puts "The total is: #{total}"
