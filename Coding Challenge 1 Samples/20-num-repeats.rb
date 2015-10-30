# Magfurul Abeer
# 5/6/15

# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  counter = 0																# Number of repeating letters
  checked = []																# Letters that have already been considered
  string.chars.each do |x|													# Increment counter by 1 if the letter repeats
    counter += 1 if string.chars.count(x) > 1 unless checked.include?(x)    # and hasn't been considered yet
    checked << x															# The letter is now marked as considered
  end
  counter																	# Return the number of repeating letters
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)