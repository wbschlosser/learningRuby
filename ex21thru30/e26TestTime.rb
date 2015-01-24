module Ex26

  # Fix everything in this program and make it run
  # This function will break up words for us.
  def Ex26.breakWords(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def Ex26.sortWords(words)
    return words.sort
  end

  # Prints the first word after popping it off.
  def Ex26.printFirstWord(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def Ex26.printLastWord(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex26.sortSentence(sentence)
    words = Ex26.breakWords(sentence)
    return Ex26.sortWords(words)
  end

  # Prints the first and last words of the sentence.
  def Ex26.printFirstLast(sentence)
    word = Ex26.breakWords(sentence)
    Ex26.printFirstWord(word)
    Ex26.printLastWord(word)
  end

  # Sorts the words then prints the first and last one.
  def Ex26.printFirstLastSorted(sentence)
    words = Ex26.sortSentence(sentence)
    Ex26.printFirstWord(words)
    Ex26.printLastWord(words)
  end
def Ex26.secret_formula(started)
  jellyBeans = started * 500
  jars = jellyBeans / 1000
  crates = jars / 100
  return jellyBeans, jars, crates
end


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 - 3 - 6
puts "This should be five: #{five}"


start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Ex26.breakWords(sentence)
sorted_words = Ex26.sortWords(words)
Ex26.printFirstWord(words)
Ex26.printLastWord(words)
Ex26.printFirstWord(sorted_words)
Ex26.printLastWord(sorted_words)
sorted_words = Ex26.sortSentence(sentence)
Ex26.printFirstLast(sentence)
Ex26.printFirstLastSorted(sentence)
end
