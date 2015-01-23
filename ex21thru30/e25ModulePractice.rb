module Ex25

#This breaks up words
def Ex25.breakWords(stuff)
	words = stuff.split(' ')
	return words
end

#sorts words
def Ex25.sortWords(words)
	return words.sort
end

#prints 1st word after shifting
def Ex25.printFirstWord(words)
	word = words.shift
	puts word
end

#prints last word after popping
def Ex25.printLastWord(words)
	word = words.pop
	puts word
end

#takes in sentence, returns sorted words
def Ex25.sortSentence(sentence)
	words = Ex25.breakWords(sentence)
	return Ex25.sortWords(words)
end

def Ex25.printFirstLast(sentence)
	words = Ex25.breakWords(sentence)
	Ex25.printFirstWord(words)
	Ex25.printLastWord(words)
end
#prints first and last words
def Ex25.printFirstLastSorted(sentence)
	words = Ex25.Sort(sentence)
	Ex25.printFirstWord(words)
	Ex25.printLastWord(words)
end

end
