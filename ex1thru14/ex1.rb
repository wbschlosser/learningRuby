#! /usr/bin/ruby

#counts chickens
puts "Time to count chickens"
# #{} does inline math
puts "Hens #{25 + 30.0 / 6}"
#math works as it does in, well, math
#Mod is one of the lowest priority, so this equation returns 1
#100 - 25 = 75. 75 * 3 = 225. 225 % 4 = 1
puts "Roosters #{(100.0 - 25.0) * 3.0 % 4.0}"
puts "counting eggs"
#below equation is 6.75 by default
puts (3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0) - 1.0 /( 4.0 + 6.0) 
#modified version of above equation is .9
puts "is it true that 3 + 2 < 5 - 7?"
#comparisons
puts "#{3 + 2 < 5 - 7}"
#more math
puts "what is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"
puts "oh, that's why it's false"
#these are interesting, they are bool statements
puts "Is it greater? #{5 > -2}"
puts "is it greater or equal? #{5 >= -2}"
puts "is it lesser or equal? #{5 <= -2}"

