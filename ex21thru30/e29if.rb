#nothing fancy here. basic if statments (if-loops)
# I don't like the if .. end though.if(){} is far superior, imho
people = 20
cats = 30
dogs = 15

if people < cats
	puts "Too many cats! The world is saved!"
end

if people > cats
	puts "Not enough cats! The world is doomed"
end

if people < dogs
	puts "the world is drooled on!"
end

if people > dogs
	puts "The world is dry"
end
dogs += 5
if people >= dogs
	puts "People are greater than or equal to dogs."
end

if people <= dogs
	puts "people are less than or equal to dogs."
end

if people == dogs
	puts "people are dogs"
end
