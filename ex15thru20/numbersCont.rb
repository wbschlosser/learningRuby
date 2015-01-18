print "Enter your investment:"
invested = gets.chomp.to_f
puts "You invested $ #{invested}"
roi = invested / 10
puts "And will get $#{roi} interest  at the end of the year"
