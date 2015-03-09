#Most uses of inheritance can be simplified or
# replace with Composition
#What is inheritance?
#	One class will get most or all features from
#	a parent class
#	class Foo(Bar)
#		Make a class Foo that inherits Bar
#	Any action done in Foo as if they were done in Bar
#	Common functionality goes in Bar, special stuff goes in Foo
#Three ways the parent/child classes can interact
# 1. Actions on child imply action on the parent
# 2. Actions on chid override action on parent
# 3. Actions on child alter actions of parent
############################################

#Implicit Inheritance
class Parent
	def implicit()
		puts "PARENT implicit()"
	end
	
	def override()
		puts "PARENT override()"
	end

	def altered ()
		puts "PARENT altered()"
	end
end

class Child < Parent
	#same as Child.altered, except some variables get set before having
	#the parent initalize with its own Parent.initalize
	def initalize(e)
		@stuff = e
		super()
	end

	def override()
		puts "CHILD override()"
	end

	def altered()
		puts "CHILD, BEFORE PARENT altered()"
		super()
		puts "CHILD, AFTER PARENT altered()"
	end
end

module Other
	def override()
		puts "OTHER override()"
	end

	def imp()
		puts "OTHER implicit()"
	end

	def altered()
		puts "OTHER altered()"
	end
end

class Offspring
	include Other
	def initalize()
		@other = Other.new()
	end

	def imp()
		@other.imp()
	end

	def override()
		puts "CHILD override()"
	end

	def altered()
		puts "CHILD, BEFORE OTHER altered()"
		@other.altered()
		puts "CHILD, AFTER OTHER altered()"
	end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()	
puts "shows that methods defined in the parent class work in child class"

#override Explicitly
puts "sometimes you want the child to behave differently, override
the function in the child"

dad.override()
son.override()

#alter before or after
puts"""
special case of overriding where you want ot alter hte behavior before
or after the parent class's version of the method runs.
First override like the last example, then use a Ruby built-in named
'Super' to get the parent version to call.
"""

dad.altered()
son.altered()

puts"""
The most common way to use 'super()' is in intialize functions in
base classes. Usually you do some things in the child class,
then complete initalization in the parent class.
"""

#################################################
#Another way to do the exact same thing is to 'use' other classes
# and modules, rather than rely on inheritance.
offspring = Offspring.new()

offspring.imp()
offspring.override()
offspring.altered()

puts"""
When to use inheritance vs composition
--------------------------------------
1. Avoid \"meta-programming\", it's too complex to be reliably useful.
 if you're stuck with it, know the class hierarchy to see where everthing
 is coming from.

2. Use composition to pacakge code into modules that are used in many
 different unrelated places and situations.

3. Use inhertiance only when there are clearly related and reusable pieces
 of code that fit under a single common concept.
 """
