class Book
	attr_accessor :title

	def title
		bad_words = ["the", "a", "an", 'and', 'in', 'of']
		answer = []

		@title.split.each_with_index do |word, i|
			answer << ((i == 0 || !bad_words.include?(word)) ? word.capitalize : word)
		end

		@title = answer.join(' ')
	end
end