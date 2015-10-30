# Magfurul Abeer
# 5/6/15

#require '05_morse_code'
#require 'rspec'

# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morse_encode(str)
  morse = {                                       # Huge hash of morse translations
  	'a' => '.-',
  	'b' => '-...',
  	'c' => '-.-.',
  	'd' => '-..',
  	'e' => '.',
  	'f' => '..-.',
  	'g' => '--.',
  	'h' => '....',
  	'i' => '..',
  	'j' => '.---',
  	'k' => '-.-',
  	'l' => '.-..',
  	'm' => '--',
  	'n' => '-.',
  	'o' => '---',
  	'p' => '.--.',
  	'q' => '--.-',
  	'r' => '.-.',
  	's' => '...',
  	't' => '-',
  	'u' => '..-',
  	'v' => '...-',
  	'w' => '.--',
  	'x' => '--..-',
  	'y' => '-.--',
  	'z' => '--..'
  }

  str.chars.map{|x| morse[x]}.join(' ')           # Changes all letters to morse and adds a space between each character
end


puts morse_encode("q") == "--.-"

puts morse_encode("cat") == "-.-. .- -"

puts morse_encode("cat in hat") == "-.-. .- -  .. -.  .... .- -"


=begin
describe "#morse_encode" do
  it "should do a simple letter" do
    morse_encode("q").should == "--.-"
  end

  it "should handle a small word" do
    morse_encode("cat").should == "-.-. .- -"
  end

  it "should handle a phrase" do
    morse_encode("cat in hat").should == "-.-. .- -  .. -.  .... .- -"
  end
end
=end