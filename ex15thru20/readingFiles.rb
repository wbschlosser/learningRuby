#gets the filename from parameter argument
filename = ARGV.first
#stores the file in txt variable
txt = open(filename)
puts "Here is your file #{filename}:"
#uses read method of txt to print the file
print txt.read

print "Type the filename again: "
#gets the filename from standard input
file_again = $stdin.gets.chomp

#stores the file in the txt_again variable
txt_again = open(file_again)

#reads txt_again and prints i
print txt_again.read

#it's important to close files when done with them
txt.close()
txt_again.close()
