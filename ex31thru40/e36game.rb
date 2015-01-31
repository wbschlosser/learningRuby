#The shopping method
#	Needs to deduct from the users gold, and return both
#	the new gold balance and also the item into inventory
def shopping(gold)
	shoppingItems = ["sword","shield","bow","potion"]
	shoppingCost = [20,15,20,10]
	puts "items for sale:"
	
	#the .zip method combines two arrays
	shoppingItems.zip(shoppingCost).each do |item, cost|
		puts "#{item},#{cost}"
	end
	puts "which would you like to buy?"
	print"> "
	input = $stdin.gets.chomp

	if input.include? "sword"
		return shoppingItems[0]
	elsif input.include? "sheld"
		return shoppingItems[1]
	elsif input.include? "bow"
		return shoppingItems[2]
	elsif input.include? "potion"
		return shoppingItems[3]
	else
		puts "Please select an item to buy, traveller"
	end
end


puts "Enter your hero's name:"
print "> "
inventory = []
gold_on_hand = 40
name = $stdin.gets.chomp

puts """
Welcome, #{name} to the town of Ravenloft.
This is a town of shops and wenches, but
mostly beginnings. Maybe someday someone drifting
through this town will make something of themselves.
Until then, this town is dull and lifeless.
"""
puts "What would you like to do?"
print "> "
input = $stdin.gets.chomp

if input.include? "shop"
	inventory =	shopping(gold_on_hand)
	puts inventory
else
	puts "not there yet"
end
