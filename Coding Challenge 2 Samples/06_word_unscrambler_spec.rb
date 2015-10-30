# Magfurul Abeer
# 5/7/15

#require 'rspec'
#require '06_word_unscrambler'

# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(word, list)
  letters = word.chars.sort                       # Break word into letters
  list.keep_if { |x| x.chars.sort == letters   }  # Only keep the words in the list that are anagrams                                          # return the new list
end

puts word_unscrambler("cat", ["tac"]) == ["tac"]
puts word_unscrambler("cat", ["tom"]) == []
puts word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]
puts word_unscrambler("cat", ["scatter", "tac", "ca"] ) == ["tac"]
puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"]

=begin
describe "#word_unscrambler" do
  it "handles a simple word" do
    word_unscrambler("cat", ["tac"]).should == ["tac"]
  end

  it "does not inappropriately choose a word" do
    word_unscrambler("cat", ["tom"]).should == []
  end

  it "handles a simple word from a larger dictionary" do
    word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
      .should == ["tac"]
  end

  it "only handles words of the correct length" do
    word_unscrambler("cat", ["scatter", "tac", "ca"] ).should == ["tac"]
  end

  it "handles multiple successful cases" do
    word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
      .should == ["turn", "runt", "nurt"]
  end
end
=end