puts "Lets practice EVERYTHING!"
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \ttabs"
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END
puts '--------------'
puts poem
puts '--------------'
five = 10 - 2 + 3 - 6
puts "this should be 5: #{five}"

def secret(started)
	jellyBeans = started * 500
	jars = jellyBeans / 1000
	crates = jars / 100
	return jellyBeans, jars, crates
end

startPoint = 10000
beans, jars, crates = secret(startPoint)
puts "With a starting point of #{startPoint}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates"

startPoint = startPoint / 10
