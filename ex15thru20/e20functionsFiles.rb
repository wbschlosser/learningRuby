#I'll just use sample.txt because it already has 3 lines in it
inputFile = ARGV.first

#printAll(inputFile): prints the entire file
def printAll (f)
	puts f.read
end

#rewind(inputFile): files have a read head like old tapes
# whenever f.readLine() is run, a line is read and the "read head"
# is moved to right after the \n that ends the file.
# this is explained more later
def rewind(f)
	f.seek(0)
end

#PrintALine(currentLine,inputFile): Prints a line, one at a time
def printALine(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

#opens inputfile
currentFile = open(inputFile)

puts "Gets the whole file:\n"

#printAll(inputFile): prints the entire file
printAll(currentFile)

puts "Now rewind, like a tape."
#rewind(inputFile): ??? rewinds like a tape, apparently, but idk what that means
rewind(currentFile)

puts "Let's print three lines:"
currentLine = 1

#PrintALine(currentLine,inputFile): Prints a line, one at a time
printALine(currentLine, currentFile)

currentLine += currentLine # shortcut ;)

printALine(currentLine, currentFile)

currentLine = currentLine + 1
printALine(currentLine, currentFile)

