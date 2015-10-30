# Magfurul Abeer
# 5/7/15

#require '03_ordered_vowels'
#require 'rspec'

# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5


def ordered_vowel_word?(word)
  vowels = word.chars.keep_if {|x| /[aeiou]/ === x }            # Make an array of only the vowels
  vowels == vowels.sort                                         # If the vowels are already ordered, return true
end

def ordered_vowel_words(str)
  str.split.keep_if {|x| ordered_vowel_word?(x)}.join(' ')      # This can be broken into 2-3 lines for readability
end


puts ordered_vowel_words("amends") == "amends"

puts ordered_vowel_words("complicated") == ""
 
puts ordered_vowel_words("afoot") == "afoot"

puts ordered_vowel_words("ham") == "ham"

puts ordered_vowel_words("crypt") == "crypt"

puts ordered_vowel_words("o") == "o"

puts ordered_vowel_words("tamely") == "tamely"

puts ordered_vowel_words("this is a test of the vowel ordering system") == "this is a test of the system"


# I completely misunderstood the instructions. I thought we had to make a method
# That organizes the vowels in a word so that the vowels are in alphabetical order
# Well here's my accidental vowel organizer method
# This is the product of not sleeping for 2 days

def vowel_organizer(str)                              # Changed method name to make it fit. Works for one word.
  
  vowels = str.chars.keep_if {|x| /[aeiou]/ === x }   # Makes an array of vowels only
  return str if vowels == vowels.sort                 # Returns the string if its vowels are already organized

  letters = str.chars                                 # Cut the string into an array of letters
  vowels.sort!                                        # Sort the vowels array
  counter = 0                                         # Set a counter to keep track of which vowel we're at

  modified_word = ""                                  # Set the modified word as an empty string

  letters.each do |x|                                 # Originally I had this mapping each letter and replacing    
                                                      # each vowel with the approriate vowel but my for some reason 
                                                      # letters remained unchanged. I realized I didnt use the '!'
    if /[aeiou]/ === x                                  
      modified_word << vowels[counter]                # If the letter is a vowel, push the appropiate vowel into word
      counter += 1                                    # Increment counter so we know which vowel we are at
    else 
      modified_word << x                              # If its not a vowel, push the character into the modified word  
    end
  end

  modified_word                                       # Return the modified word
end

def vowel_organizer(str)                              # Changed method name to make it fit. Works for one word.
  
  vowels = str.chars.keep_if {|x| /[aeiou]/ === x }   
  return str if vowels == vowels.sort                 

  letters = str.chars                                 
  vowels.sort!                                        
  counter = 0                                         

  modified_word = ""                                  # Set the modified word as an empty string

  letters.each do |x|                                 # Originally I had this mapping each letter and replacing    
                                                      # each vowel with the approriate vowel but my for some reason 
                                                      # letters remained unchanged. I realized I didnt use the '!'
    if /[aeiou]/ === x                                  
      modified_word << vowels[counter]                # If the letter is a vowel, push the appropiate vowel into word
      counter += 1                                    # Increment counter so we know which vowel we are at
    else 
      modified_word << x                                
    end
  end

  modified_word                                       
end


puts vowel_organizer("umbrella")  == "ambrellu"       # This puts "ambrellu"







# Original Instructions

=begin
describe "#ordered_vowel_words" do
  it "returns a word that is in order" do
    ordered_vowel_words("amends").should == "amends"
  end

  it "does not return a word that is not in order" do
    ordered_vowel_words("complicated").should == ""
  end

  it "handles double vowels" do
    ordered_vowel_words("afoot").should == "afoot"
  end

  it "handles a word with a single vowel" do
    ordered_vowel_words("ham").should == "ham"
  end

  it "handles a word with no vowel" do
    ordered_vowel_words("crypt").should == "crypt"
  end

  it "handles a word with a single letter" do
    ordered_vowel_words("o").should == "o"
  end

  it "ignores the letter y" do
    ordered_vowel_words("tamely").should == "tamely"
  end

  it "processes a string with several words" do
    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"

    ordered_vowel_words(phrase).should == result
  end
end
=end