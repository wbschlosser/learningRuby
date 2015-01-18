# enter these before script is run
first, second, third = ARGV

puts """
Your first variable is: #{first},
second one is #{second},
third one is #{third}
"""
# convert the arguments to ints
# default they are strings
first = first.to_i
second = second.to_i
res1 = first / second
puts "This is the result #{res1}"
