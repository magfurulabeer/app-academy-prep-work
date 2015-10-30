# Magfurul Abeer
# 5/14/15

def translate(sentence)

  consonent = Proc.new do |arr|										# Just wanted to practice using a Proc
  	arr << arr[0] 													# Move first letter to the end
	arr.delete_at(0)
  end

  words = sentence.split(' ')										# Break sentence into words
  

  words.map! do |word|  											# For every word
	if /[aeiou]/ === word.chars.first 								# If it start with a vowel, add 'ay' to the end
	  word << 'ay' 
	else 															# Otherwise
	  letters = word.chars 											# Break word into letters
	  until(/[aeiou]/ === letters.first) 							# Until the word begins with a vowel, do consonent block
	  	consonent.call(letters) if letters.first(2).join == "qu"	# If it starts with 'qu' do the consonent block an extra time
	  	consonent.call(letters)
	  end

	  letters << "ay"												# Add 'ay' to the end
	  word = letters.join 											# Put the letters together into a word
	end 
  end

  words.join(' ') 													# Return the words joined together with a space
end
