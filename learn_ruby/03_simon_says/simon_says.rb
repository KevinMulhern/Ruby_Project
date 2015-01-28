def echo(phrase)
	phrase
end

def shout(s)
	s.upcase
end

def repeat(phrase, n=2)
	([phrase] * n).join(' ')
end

def start_of_word(word, i)
	word[0..i-1]
end

def first_word(word)
	word.split(' ').first
end

def titleize(sentence)
	lowercase_words = ['a', 'an', 'the', 'and', 'but', 'or', 'for' 'nor', 'over']
	words = sentence.split(" ")
	output = ""

	words.each do |x|
		if ((lowercase_words).include?(x))
			x.downcase
		else
			x.capitalize!
		end
	end
	words[0].capitalize!

	words.each do |word|
		output += word + " "
	end

	return output.strip

end
  