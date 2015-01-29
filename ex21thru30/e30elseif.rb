#if statements with else conditionals
# I definitely don't like 'elsif'
#	Seriously, just use else if or even elseif
people = 30
cars = 40
trucks = 15

if cars > people
	puts "We should take the cars."
elsif cars < people
	puts "we should not take the cars."
else
	puts "We can't decide"
end

if trucks > cars
	puts "Too many trucks"
elsif trucks < cars
	puts "maybe we can take the trucks"
else
	puts "we still can't decide"
end

if people > trucks
	puts "Alright, let's just take the trucks"
else
	puts "Fine, lets stay home then"
end

