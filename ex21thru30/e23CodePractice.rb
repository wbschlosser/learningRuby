#I'm supposed to hunt for code and read through it for a week, but
# I think I'll write down some interesting things I've found instead

#I think this needs to be command line, doesn't work
foo = "The quick brown fox jumps over the lazy dog"
foo['The'] = 'A'#replaces first occurance of "the" in the string
puts "#{foo}"
foo.sub('quick','fast')# a copy of foo with 'quick' replaced with 'fast'
puts "#{foo}"
foo.sub(/quick/,'speedy')#replaces "quick" with "speedy" using regex
puts "#{foo}"
foo.gsub!(/a/i,'the')#case-insensitive, replace all 'a' with 'the'

test = 'Hello, Ruby' =~ /Ruby/ #regex matching
puts "index of...#{test}"
testing = 'Hello, Ruby'.index('Ruby') #using index method

puts "index of....#{testing}"

#printing name 10x two different ways
puts "Wes Schlosser\n" * 10

10.times{puts "Wes Schlosser"}

#prints string 1 - 10 with 2 different methods
(1..10).each do |num| #using a range
	puts "This is sentence number #{num}"
end

1.upto(10) do |num|
	puts "This is sentence number #{num}"
end
