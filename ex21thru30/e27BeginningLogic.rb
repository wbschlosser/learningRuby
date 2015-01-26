#This exercise is about memorizing logic operators in Ruby
#they're the standard for (nearly?) every programming language
#but I'll write them down here anyway

puts "&&, both items being compared must be true for this to be true"
andTable ="""
AND(&&)		|	true?
-------------------------
true && false	|	false
true && true	|	true
false && true	|	false
false && false	|	false
"""
puts "#{andTable}\n"

puts "||, either/or must be true for this to be true"

orTable ="""
OR(&&)		|	true?
------------------------
true || false	|	true
true || true	|	true
false || true	|	true
false || false	|	false
"""
puts "#{orTable}\n"

puts "!, inverts the result"


notTable ="""
NOT(!)	|	true?
------------------
!false 	|	true
!true	|	false
"""

puts"#{notTable}\n"

puts "!(A || B), opposite of || both must be false to return true"


notOrTable ="""
NOTOR !(||)	|	true?
-------------------------
!(true || false)|	false
!(true || true)	|	false
!(false || true)|	false
!(false || false)|	true
"""
puts "#{notOrTable}\n"

puts "!(A && B), opposite of and"

notAndTable = """
NOTAND !(&&)	|	true?
-------------------------
!(true && false)|	true
!(true && true)|	false
!(false && true)|	true
!(false && false)|	true
"""

puts "#{notAndTable}\n"

puts "!=, is not equal. usually for comparing numbers/strings"

notEqualTable = """
NOTEQUAL !=	|	true?
-------------------------
1 != 0	|	true
1 != 1	| false
0 != 1	| true
0 != 0	| false
"""

puts "#{notEqualTable}\n"


isEqualtable = """
ISEQUAL ==	|true?
1 == 1| true
1 == 0| false
0 == 1| false
0 == 0| true
"""
