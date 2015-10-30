# Magfurul Abeer
# 5/6/15

#require '02_letter_count'
#require 'rspec'

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

# I just looked at the solution. I like the each_char method used. 
# Noting that for future reference. 

def letter_count(str)
  count = Hash.new(0)                 # Make a hash of for letters and frequencies
  str.split.join.chars.each do |x|    # .split.join is just my quick way to remove spaces. See below for more info
    count[x] += 1                     # For every character, make a key for the character
  end                                 # and set it to its frequency 
  count                               # Return the hash  
end                                   # Instead of .split.join, I could have just not added it to the hash if it was a space

puts letter_count("cat") == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    }

puts letter_count("moon") == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    }

puts letter_count("cats are fun") == {
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    }
=begin
describe "#letter_count" do
  it "handles a simple case" do
    letter_count("cat").should == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    }
  end

  it "handles multiples of the same letter" do
    letter_count("moon").should == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    }
  end

  it "handles a multi-word case" do
    letter_count("cats are fun").should == {
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    }
  end
end
=end