username, userage = ARGV
username = ARGV.first
prompt = ': '
puts "Hi #{userage} year old #{username}"
puts "I'd like to ask you a few questions."
puts "Do you like me #{username} ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{username}? ", prompt
lives = $stdin.gets.chomp
puts "What kind of computer do you have? ", prompt
comp = $stdin.gets.chomp

puts """
Alright, you said #{likes} about liking me.
You live in #{lives}, no clue where that is.
And you have a #{comp} computer. #{comp} master race.
"""

