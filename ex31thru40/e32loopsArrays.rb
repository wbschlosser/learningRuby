#using for loops to print arrays

the_count = [1,2,3,4,5]
fruit = ['apples','oranges','pears','apricots']
change = [1, 'pennies', 2,'dimes',3,'quarters']

#traditional for loop found in some other languages
for number in the_count
	puts "I like to #{number}"
end

#ruby style
fruit.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

#mixed lists, different sytax to that above
change.each {|i| puts "I got #{i}"}

#can build lists, this is an empty one
elements = []

# use range operator to do 0 to 5 counts
(0..5).each do |i|
	puts "adding #{i} to the list"
	elements.push(i)
end

#print them
elements.each{|i| puts "Element is: #{i}"}
