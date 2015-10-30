# Magfurul Abeer
# 5/7/15

#require '08_bubble_sort'
#require 'rspec'

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)
  return arr if arr.length < 2										# If array has one or no items, its already sorted
  n = arr.length 													# N set to array length for convenience  
    (2..n).each do |z| 												# Set "wall" at n-2 and have it move towards the "left" 
	  (0..n-z).each do |x| 											# Sort each number until "wall"
	  	arr[x], arr[x+1] = arr[x+1], arr[x] if arr[x] > arr[x+1]    # Swap items if current item is larger than the next
	  end
	end 
  arr                  												# Return sorted array
end	

puts bubble_sort([]) == []
puts bubble_sort([1]) == [1]
puts bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]

=begin
describe "#bubble_sort" do
  it "works with an empty array" do
    bubble_sort([]).should == []
  end

  it "works with an array of one item" do
    bubble_sort([1]).should == [1]
  end

  it "sorts numbers" do
    bubble_sort([5, 4, 3, 2, 1]).should == [1, 2, 3, 4, 5]
  end
end
=end