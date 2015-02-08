#modules are like hashes
require "./e40myStuff.rb"
mystuff = {'apple' => "I AM APPLES!"}
#this doesn't work the other way around
puts mystuff['apple'] # gets aple from dict
#"Gets x from y"
#"gets I AM APPLES from apple"

#1. A ruby file with functions and variables inside a module .. end block
#2. Import the file, access functions or variables with the . operator
puts "See e40myStuff.rb for the module to use"
puts MyStuffTwo.methodThing() #gets apple from the module

puts "You can access variables in the module with the following"
puts "MyStuff::TANGERINE"
puts MyStuffTwo::TANGERINE #same thing as line 12, just a variable

puts"""
1. Take a key = value style container.
2. Get something out of it by the key's name.
"""

#classes are like modules
#Classes are ways to take a grouping of functions and data and place
#them inside a container so they can be accessed with the . operator
puts "See e40Class.rb for the class file"

puts"""
--------------------IMPORTANTE-------------------------------------
Classes can be written once, and used as many times as you want
without fear of them overlapping or interfering wih each other.

Modules that are imported can only have one instance across
the entire program.
"""

#objects are like require
puts "if classes are like modules, then there has to be a class
equivalent of 'require'"

puts "instantiate a class by calling the new function"
thing = MyStuffTwo.new() #instantiates the class
thing.apple
puts thing.tangerine

puts"""
1. ruby looks for FirstClass and sees that it's a class.
2. ruby creates an empty object with all of the functions that have
been defined in FirstClass because FirstClass.new() was called
3. ruby looks to see if you made an initalize funciton, and if so it
calls the function to initalize the newly created empty object
4. in the initialize function @tangerine tells ruby 'i want the tangerine
variable that is part of this object'. @ and $ say where a variable is
located. $ for global and @ for (this) object
5. ruby can take this newly minted object and assign it to 'thing' for us
to worth with
"""
