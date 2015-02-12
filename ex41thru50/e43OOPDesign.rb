#a common class that has common things all scenes do
class Scene
	def enter()
		puts "this scene is not configured."
		puts "Sublcass it and implement enter()."
		exit (1)
	end
end

class Engine

	def initalize(scene_map)
		@scene_map = scene_map
	end

	def play()
		current_scene = @scene_map.opening_scene()
		last_scene = @scene_map.next_scene('finished')
		while current_scene != last_scene
			next_scene_name = current_scene.enter()
			current_scene = @scene_map.next_scene(next_scene_name)
		end

		#prints out the last scene
		current_scene.enter()	
	end
end

class Death < Scene
	@@quips = [
		"You died, you kinda suck at this.",
		"Your mom would be proud...if she were smarter.",
		"Such a luser.",
		"I have a small kitty that's better at this."
	]
	def enter()
		puts @@quips[rand(0..(@@quips.length-1))]
		exit(1)
	end
end

class CentralCorridor < Scene
	
	def enter()
		puts"""
		The Gothons of planet percal have invaded your ship and destroyed
		your entire crew. You are the last surviving member and your mission
		is to get the neutron destruct bomb from the weapons armory, put it
		on the bridge, and escape in an escape pod before it blows up\n
		You're running down a central corridor to the armor when a gothon
		jumps out; red scaly skin, dark grimy teeth, and evil claws. he's
		blocking the door to the armory and is about to pull a weapon
		out to blast you
		"""
		print "> "
		action = $stdin.gets.chomp

		if action == "shoot!"
			puts"""
			Quick on th draw you yank out your blaster and fire it. His
			quick reflexes cause you to miss, and he enters a blinding
			rage, blasting you over and over until you die.
			"""
			return 'death'

		elsif action == "dodge!"
			puts"""
			Like a world class boxer you dodge, weave, slip and slide right
			as the gothon blaster fires at your head. Mid-dodge you slip
			and crack your head on the ground, blacking out. When you
			come to the gothon blasts you and you die.
			"""
			return 'deaeth'

		elsif action == "tell a joke"
		puts"""
		Luckily for you, you know a good joke:
		There are 10 types of people in the world. Those who understand
		binary and those who dont.
		As he's rolling on the floor laughing you blast him in his big
		stupid face and jump through the Weapon Armory Door.
		"""
		return 'finished'

		else
			puts "Doesn't compute"
			return 'central_corridor'
		end
	end
end

class LaserWeaponArmory < Scene

	def enter()
		puts"""
		you dive roll into the armor crouch and scan for more gothons
		that might be hiding. It's dead quiet, too quiet...
		You run to the far side of the room and find th neutron bomb
		in its container. There's a keypad lock on the box and you need
		the code to get the bomb out. If you get the code wrong 10 times
		then the lock closes forever and you can't get to the bomb. the
		code is 3 digits
		"""
		code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
		print "[keypad]> "
		guess = $stdin.gets.chomp
		guesses = 0
		while guess != code && guesses < 10
			puts "BZZT!"
			guesses += 1
			print "[keypad]> "
			guess = $stdin.gets.chomp
		end

		if guess == code
			puts"""
			The container clicks open and the seal breaks.
			You grab the bomb and run as fast as you can to the bridge.
			"""

			return 'the_bridge'
		else
			puts"""
			The lock buzzes one last time and you hear the sickening melting
			sound of the mechanisms fusing together. You decide to sit there
			and finally the gothons blow up the ship from their ship
			and you die
			"""
			return 'death'
		end
	end
end

class TheBridge < Scene
	def enter()
		puts"""
		You burst onto the bridge wit the bomb under your arm and surprise
		5 gothons who are trying to take control of the ship. Each of them
		has an even uglier clown costume than the last. The haven't pulled
		their weapons out yet, as they see the active bomb under your arm
		and don't want to set it off
		"""
		action = $stdin.gets.chomp

		if action == "throw the bomb"
			puts """
			In a panic you throw the bomb at the group
			and run for the door. As you turn around the gothons
			shoot you in the back. As you lay dying you see them
			frantically trying to disable it. You die knowing they will
			probably blow up when it goes off
			"""
		return 'death'
		elsif action == "slowly place the bomb"
			puts"""
			You point your blaster at the bomb and the gothons
			put their hands up and start to sweat. You inch backward towards
			the door, open it, and place the bomb on the floor. You jump
			back through the door, punch the close button and blast the lock
			so the gothons can't get out.
			Now that the bomb is placed you run to the escape pod to get out
			of this tin can
			"""
		return 'escape_pod'
		else
			puts "does not compute!"
			return 'the_bridge'
		end
	end
end

class EscapePod < Scene
	def enter()
		puts"""
		you rush through the ship deserately trying to make it to the
		escape pods before the ship explodes. It seems like there are
		hardly any gothons on the ship, so your run is clear of
		interference. You get to the chamber with the pods and now need
		to pick one to take. Some of them could have been damaged in the
		attack, but you don't have time to look. There are 5 pods, which
		one do you take?
		"""
		good_pod = rand(1..5)
		print"[pod #]> "
		guess = $stdin.gets.chomp.to_i

		if guess != good_pod
			puts"""
			You jump into pod #{guess} and hit the eject button.
			The pod escapes out into space then implodes as the
			hull ruptures, crushing you.
			"""
			return 'death'
		else
			puts"""
			You jump into pod #{guess} and hit the eject button.
			The pod slides into space heading to the planet below.
			As it plummits you look back to see your ship implode
			then explode like a bright star, taking out the gothon ship
			at the same time. You won!
			"""
			return 'finished'
		end
	end
end

class Finished < Scene
	def enter()
		puts "You Win! What a great game!"
	end
end

#comes after all the scenes because they need to exist
#before the hash is made
class Map
	@@scenes = {
		'central_corridor' => CentralCorridor.new(),
		'laser_weapon_armory' => LaserWeaponArmory.new(),
		'the_bridge' => TheBridge.new(),
		'escape_pod' => EscapePod.new(),
		'death' => Death.new(),
		'finished' => Finished.new(),
	}
	def initalize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		val = @@scenes[scene_name]
		return val
	end

	def opening_scene()
		return next_scene(@start_scene)
	end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
