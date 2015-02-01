#When to use arrays
#1. Maintain order, listed order as arrays do not auto-sort for you
#2. Need to access contents randomly by number (starts at 0)
#3. Need to go through contents linerally (first to last)
#	use a for-loop to do this
########################################################
ten_things = "Apples Oranges Crows Telephone Light JackieChan"

puts "Wait, there are not 10 things in the list. Fix it"

stuff = ten_things.split(' ')
more_stuff = ["day","night","song","frisbee","corn","banana","girl","boy"]

#making sure there are 10 items
while stuff.length != 10
	next_one = more_stuff.pop
	puts "adding: #{next_one}"
	stuff.push(next_one)
	puts "There are #{stuff.length} items now."
end

puts "there we go: #{stuff}"

puts stuff[1]
puts stuff[-1]#last element in the array
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
puts stuff[2...8].join("~")
