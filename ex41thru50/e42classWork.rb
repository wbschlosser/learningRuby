#animal is-a object
class Animal
end

##Dog class, a dog is-a animal
class Dog < Animal
	def initialize(name)
	##can use the name variable outside the class
	@name = name
	end
end

#Cat class, a cat is-a animal
class Cat < Animal
	def initalize(name)
	@name = name
	end
end

#initalizes the person class
class Person
	def initalize(name)
	@name = name

	#person has-a pet of some kind
	@pet = nil
	end

	attr_accessor :pet
end

#Employee class, an employee is-a person
class Employee < Person
	def initalize(name, salary)
	super(name)
	@salary = salary
	end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

#rover is-a dog
rover = Dog.new("Rover")

satan = Cat.new("Satan")

mary = Person.new("Mary")
mary.pet = satan

frank = Employee.new("Frank",120000)
frank.pet = rover

flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()
