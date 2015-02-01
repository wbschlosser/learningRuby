puts"""
Some cool keywords
alias - create another name for a function

break - breaks out of a looop at that point

case - case X; when y; else; end

class - define a new class

defined? - is this class/function/etc defined already?

ensure - run this code regardless of exceptions

redo - rerun a block of code exactly the same

rescue - run this code of an exception happen
	begin rescue x; end

super - parent class of this class

unless - inverse of if
	unless false then puts 'not' end

yield - pause and transfer control to the code block
"""

puts """
some cool datatypes

nil - nothing, no value

hashes - stores a key=value mapping of things
	e = {'x' => 1, 'y' => 2}
"""

puts"""
string escape sequences (no spaces)

\ \ backslash
\' single quote
\" double quote
\ a bell
\ b backspace
\ f formfeed
\ v vertical tab
"""

puts"""
Operators

. - dot access
	\"1\".to_i == 1

.. - inclusive range

... - non-inclusive range

:: - colon access
	Module::Class

<=> - comparison
	4<=>4 == 0

== - equal

=== - equality
	4 === 4 == true

@ - object scope
	@var ; @@classvar

@@ - class scope (see above)

$ - global scope
	$stdin.gets.chomp
"""
