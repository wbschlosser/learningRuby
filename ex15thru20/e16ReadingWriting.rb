# close - closes file (file -> save)
# read - reads contents of the file, can assign result to variable
# readline - reads one line of a file
# truncate - empties file
# write('stuff') - writes "stuff" to the file
#	Write takes parameter of a string to write to the file

fn = ARGV.first
puts """
We're going to erase #{fn}
If you don't want that hit CTRL-C.
If you want that, hit return/enter
"""

$stdin.gets

puts "Opening the file.."
target = open(fn, 'w')

puts "Truncating file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask for 3 lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp
output = line1 + "\n" + line2 + "\n" +line3
puts "I'm going to write these to the file."

target.write(output)
target.close
readfile = open(fn)
print readfile.read
puts "\n"
puts "finally, we close the file."
readfile.close
