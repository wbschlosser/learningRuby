def goldRoom
	puts "this room is full of gold, how much do you take?"
	print "> "
	choice = $stdin.gets.chomp.to_i
	# supposed to use regex here, but that's a lesson for another time
	if choice < 50
		puts "Nice, you're not greedy, you win!"
		exit(0)
	else
		dead("You greedy bastard!")
	end
end

def bearRoom
	puts """
		There is a bear here.
		The bear has a bunch of honey.
		The fat bear is in front of another door.
		How are you going to move the bear?
		"""
	bear_moved = false

	while true
		print "> "
		choice = $stdin.gets.chomp

		if choice == "take honey"
			dead("the bear looks at you and then slaps your face off.")
		elsif choice == "taunt bear" && !bear_moved
			puts "the bear has moved from the door. you can go through"
			bear_moved = true
		elsif choice == "taunt bear" && bear_moved
			dead("the bear gets pissed and chews your leg off")
		elsif choice == "open door" && bear_moved
			goldRoom
		else
			puts "I got no idea what that means."
		end
	end
end

def cthuluRoom
	puts"""
		Here you see the great evil Cthulu.
		It stares at you and you go insane.
		Do you flee for your life or eat your head?
		"""
	print "> "
	choice = $stdin.gets.chomp
	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("Well, that was tasty!")
	else
		cthuluRoom
	end
end

def dead(why)
	puts why, "Good job!"
	exit(0)
end

def start
	puts"""
		You are in a dark room.
		There is a door to your right and left.
		Which do you take?
		"""
	print "> "
	choice = $stdin.gets.chomp
	
	if choice == "left"
		bearRoom
	elsif choice == "right"
		cthuluRoom
	else
		dead("You stumble around the room until you starve.")
	end
end

start
