#
#Class
#Tell Ruby to make a new type of thing.
#object
#Two meanings: the most basic type of thing, and any instance of some thing.
#instance
#What you get when you tell Ruby to create a class.
#def
#How you define a function inside a class.
#@
#Inside the functions in a class, @ is a variable for the instance/object 
#being accessed.
#inheritance
#The concept that one class can inherit traits from another class, much 
#like you and your parents.
#composition
#The concept that a class can be composed of other classes as parts, much 
#like how a car has wheels.
#attribute
#A property classes have that are from composition and are usually 
#variables.
#is-a
#A phrase to say that something inherits from another, as in a "salmon" 
#is-a "fish."
#has-a
#A phrase to say that something is composed of other things or has a trait,
#as in "a salmon has-a mouth." 
######################################################################
require 'open-uri'
WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []
PHRASES = {
	"class ### < ###\nend" =>
		"Make a class named ### that is-a ###.",
	"class ###\n\tdef initalize(@@@)\n\tend\nend" =>
		"Class ### has-a initalize that takes @@@ params",
	"Class ###\n\tdef ***(@@@)\n\tend\nend" =>
		"Class ### has-a function named ### that takes @@@ params.",
	"*** = ###.new()" =>
		"Set *** to an instance of class ###.",
	"***.***(@@@)" =>
		"from *** get the *** function, call it with params @@@.",
	"***.*** = '***'"=>
		"from *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

open(WORD_URL){|f|
	f.each_line do |word|
		WORDS.push(word.chomp)
	end
}

def craft_names(rand_words, snippet, pattern, caps=false)
	names = snippet.scan(pattern).map do
		word = rand_words.pop()
		caps ? word.capitalize : word
	end

	return names * 2
end

def craft_params(rand_words, snippet,pattern)
	names = (0...snippet.scan(pattern).length).map do
		param_count = rand(3) + 1
		params = (0...param_count).map{|x| rand_words.pop()}
		params.join(', ')
	end

	return names *2
end

def convert(snippet, phrase)
	rand_words = WORDS.sort_by {rand}
	class_names = craft_names(rand_words,snippet,/###/,caps=true)
	other_names=craft_names(rand_words,snippet,/\*\*\*/)
	param_names=craft_params(rand_words,snippet,/@@@/)

	results = []

	[snippet,phrase].each do |sentence|
		#fake class names, also copies sentences
		result = sentence.gsub(/###/){|x| class_names.pop}

		#fake other names
		result.gsub!(/\*\*\*/){|x| other_names.pop}
		
		#fake param lists
		result.gsub!(/@@@/){|x| param_names.pop}

		results.push(result)
	end
	
	return results
end

loop do
	snippets = PHRASES.keys().sort_by{rand}

	for snippet in snippets
		phrase = PHRASES[snippet]
		question,answer = convert(snippet,phrase)

		if PHRASE_FIRST
			question, answer = answer, question
		end

		print question, "\n\n> "

		exit(0) unless $stdin.gets

		puts "\nANSWER: %s\n\n" % answer
	end
end
