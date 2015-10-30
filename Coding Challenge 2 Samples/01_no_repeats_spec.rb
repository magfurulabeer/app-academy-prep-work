# Magfurul Abeer
# 5/7/15

#require '01_no_repeats'
#require 'rspec'

# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeat?(year)
  digits = year.to_s.chars                    # Break year into digits
  digits.each do |x|                          # If any digit repeats, return false
    return false if digits.count(x) > 1
  end
  true                                        # Otherwise return true  
end

def no_repeats(year_start, year_end)
  years = (year_start..year_end).to_a         # Array of years
  years.keep_if { |x| no_repeat?(x) }         # Keep only non repeating years  
  years                                       # Return array of non repeating years
end

puts no_repeats(1234, 1234) == [1234]
puts no_repeats(1123, 1123) == []
puts no_repeats(1980, 1987) == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
    ]




=begin
describe "#no_repeats" do
  it "should return a no repeat year" do
    no_repeats(1234, 1234).should == [1234]
  end

  it "should not return a repeat year" do
    no_repeats(1123, 1123).should == []
  end

  it "should return only those years that have no repeated digits" do
    no_repeats(1980, 1987).should == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
    ]
  end
end
=end