# Magfurul Abeer
# 5/10/15

# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.
# I am now practicing writing these methods in notepad and then checking them once I was done

def scramble_string(string, position) 
  new_string = []
  letters = string.chars
  (0..string.length - 1).each do |x| 

    new_string[position[x]] = letters[x]
    puts "Loop #{x}: #{new_string}"
  end
  new_string.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts scramble_string("abcd", [3, 1, 2, 0]) == "dbca"
puts scramble_string("markov", [5, 3, 1, 4, 2, 0]) #== "vkaorm"
# Possible typo here