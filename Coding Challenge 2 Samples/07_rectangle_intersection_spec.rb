# Magfurul Abeer
# 5/7/15

#require '07_rectangle_intersection'
#require 'rspec'

# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

# I wasn't entirely sure how to use min and max for this
# So this is my roundabout way to do it
def rec_intersection(rect1, rect2)
  return nil if (rect1[1][0] < rect2[0][0]) || (rect1[1][1] < rect2[0][1])

  bottom_left = []
  top_right = []
  new_rect = []
  # bottom_left = (rect1[0][0] > rect2[0][0]) ? rect1[0] : rect2[0]
  if rect1[0][0] > rect2[0][0]
    bottom_left.push(rect1[0][0],rect1[0][1])
  else
    bottom_left.push(rect2[0][0],rect2[0][1])
  end
  new_rect << bottom_left
  
  if rect1[1][0] < rect2[1][0]
    top_right.push(rect1[1][0],rect1[1][1])
  else
    top_right.push(rect2[1][0],rect1[1][1])
  end
  new_rect << top_right
end

puts rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    ) == [[1, 0], [2, 1]]

puts rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    )== [[1, 1], [2, 2]]

puts rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    )== nil

puts rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    ) == [[2, 2], [3, 4]]


=begin
describe "#rectangle_intersection" do
  it "handles a simple case" do
    rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    ).should == [[1, 0], [2, 1]]
  end

  it "returns the smaller rectangle if engulfed completely" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    ).should == [[1, 1], [2, 2]]
  end

  it "returns nil if there is no intersection" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    ).should == nil
  end

  it "handles a more complex case" do
    rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    ).should == [[2, 2], [3, 4]]
  end

end
=end