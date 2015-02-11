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
		print"[keypad]> "
		guess = $stdin.gets.chomp
		guesses = 0
		while guess != code && guesses < 10
			puts "BZZT!"
			guesses++
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
	end
end

class EscapePod < Scene
	def enter()
	end
end

class Map
	def initalize(start_scene)
	end

	def next_scene(scene_name)
	end

	def opening_scene()
	end
end

a_map = Map.new('central corridor')
a_game = Engine.new(a_map)
a_game.play()
