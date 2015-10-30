# Magfurul Abeer
# 5/7/15

#require '00_nearest_larger'
#require 'rspec'

# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, i)
  n = n = (arr.length - i - 1) > i ?  (arr.length - i - 1) : i
  (1..n).each do |x|
    return i-x if arr[i-x] > arr[i] unless i-x < 0
    return i+x if arr[i+x] > arr[i] unless i+x >= (arr.length)
  end
  return nil
end

puts nearest_larger([2,3,4,8], 2) == 3
puts nearest_larger([2,8,4,3], 2) == 1
puts nearest_larger([2,6,4,8], 2) == 1
puts nearest_larger([2,6,4,6], 2) == 1

# My own tests to see if it iterates all the way and if it return nil if none is found
puts nearest_larger([2,6,7,6,5,4,2,5,6,5,2,3,5,6,3,8], 2) == 15
puts nearest_larger([8,6,6,6,5,4,2,5,6,5,2,3,5,7,3,3], 2) == 0
puts nearest_larger([8,6,6,6,5,4,2,5,6,5,2,3,5,7,3,3], 0) == nil

=begin
describe "#nearest_larger" do
  it "handles a simple case to the right" do
    nearest_larger([2,3,4,8], 2).should == 3
  end

  it "handles a simple case to the left" do
    nearest_larger([2,8,4,3], 2).should == 1
  end

  it "treats any two larger numbers like a tie" do
    nearest_larger([2,6,4,8], 2).should == 1
  end

  it "should choose the left case in a tie" do
    nearest_larger([2,6,4,6], 2).should == 1
  end

  it "handles a case with an answer > 1 distance to the left" do
    nearest_larger([8,2,4,3], 2).should == 0
  end

  it "handles a case with an answer > 1 distance to the right" do
    nearest_larger([2,4,3,8], 1).should == 3
  end

  it "should return nil if no larger number is found" do
    nearest_larger([2, 6, 4, 8], 3).should == nil
  end

  it "should return the nearer of two greater numbers" do
    nearest_larger([2, 6, 9, 4, 8], 3).should == 2
  end
end
=end