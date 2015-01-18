#Small change from the book...
print "Enter a number:"
number = gets.chomp.to_i
bigger = number * 50
puts "A bigger number is #{bigger}"

#I used the same variables instead of creating new ones
print "Enter another number: "
number = gets.chomp
number = number.to_i

bigger = number / 100
puts "A smaller number is #{bigger}"

