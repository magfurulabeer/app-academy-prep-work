# Magfurul Abeer
# 5/14/15

def hello
  "Hello!"
end

def greet(who)
       "Hello, #{who}!"
end

def tokenize(string)
  	tokens = string.split.map! do |x|
	  if ('0'..'9').include?(x)
	  	puts "number"
	  else
	  	puts "char"
	  end
  	end
  end