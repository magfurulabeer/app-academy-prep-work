# Magfurul Abeer
# 5/6/15

# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
# string.chars.reverse.join					    	# Option 1 - Break string in array of chars, reverse array, and join them back together
  
=begin 											              # Option 2 - Break string into chars and prepend them so that the letter 
  str = ''										            # after is now before it
  string.chars.each{|x| str.prepend(x)}
  str
=end
    
  arr = string.chars							        # Option 3 - Iterating through each index of array of characters in string from last 
  string = ''									            # to first, push character into string 
  (arr.length-1).downto(0) do |x|				
    string << arr[x]
  end
  string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)