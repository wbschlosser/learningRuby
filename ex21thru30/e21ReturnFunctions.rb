def add(a,b)
	puts "Adding #{a} + #{b}"
	return a + b
end

def sub(a,b)
	puts "Subtracting #{a} - #{b}"
	return a - b
end

def mult(a,b)
	puts "Multiplying #{a} * #{b}"
	return a * b
end

def div(a,b)
	puts "Dividing #{a} / #{b}"
	return a / b
end

puts "FUNctional math!"

age = add(20,5)
height = sub(72,2)
weight = mult(73,2)
iq = div(200,2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, Iq: #{iq}"

#extra credit
#divides iq by 2 (again)
#multiplies weight by that amount
#subtracts height from the above amount
#adds age and THAT above amount
what = add(age, sub(height, mult(weight, div(iq, 2))))

puts "This becomes #{what}"
