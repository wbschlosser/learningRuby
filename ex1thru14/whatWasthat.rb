#Escape sequences are just like perl

tabbyCat = "\tI'm tabbed in."
persianCat = "I'm split\non a line."
backslashCat = "I'm \\ a \\ cat."
fatCat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* catnip\n\t* Grass"

puts tabbyCat
puts persianCat
puts backslashCat
puts fatCat

#''' vs """
# ----------
# ''' is good for multi-line that contains #{} that you
# dont want processed
# use """ for everything else
