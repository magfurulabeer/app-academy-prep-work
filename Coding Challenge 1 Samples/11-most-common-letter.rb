# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter_hash(string)
  letter_count = Hash.new(0)
  string.chars.each do |x|
  	letter_count[x] += 1
  end  
end

def most_common_letter(string)
  most_common = ['none', 0]
  string.chars.each do |x|
  	most
  end  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)