# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  sum = []
  nums.each do |x|
  	if nums.include?(-x)
  	  sum << nums.index(x)
  	  sum << nums.index(-x)
  	  return sum
  	end
  end
  nil
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)

#My own test
puts two_sum([1,7,3,2,8,7,3,5,17,3,5,-17]) == [8,11]