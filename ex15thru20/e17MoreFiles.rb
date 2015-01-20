fromfile, tofile = ARGV
#how to get these two lines into 1 line???
infile = open(fromfile)
indata = infile.read
puts "input file: #{indata.length} bytes"

#checks if the file exists using the File library
#keeping this here for learning purposes
#puts "does the output file exist? #{File.exist?(tofile)}"
outfile = open(tofile, 'w')
outfile.write(indata)
outfile.close
infile.close
