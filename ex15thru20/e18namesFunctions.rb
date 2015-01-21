#functions do 3 things, obviously. Writing this because the book told me to
# 1: name pieces of code
# 2: they take args like ARGV does
# 3: can make mini-scripts or tiny commands with them

#functions should still say what they do
def print_two(arg1, arg2) #*args - ARGV for functions
	#arg1, arg2 = args
	puts "Arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
	puts "arg1: #{arg1}"
end

def print_none()
	print "I ain't got nothin"
end

print_two("Wes", "Schlosser")
print_one("Bees!")
print_none()

