# Magfurul Abeer
# 5/14/15

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  arr = []
  num.times { arr << str}
  arr.join(' ')
end

def start_of_word(word, num = 1)
  word.chars.first(num).join
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  title = sentence.split
  title.map do |word|
    word.capitalize! if word.length > 4 || word == title.first || word == title.last
  end
  title.join(' ')
end

# I believe the lastspecification was misleading
# It said it capitalized the little words at the start of a title
# but considers 'over' to be a little word but Kwai not to be
# I understand why it's capitalized but the specifications do not
# call for that