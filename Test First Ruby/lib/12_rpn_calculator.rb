class RPNCalculator
  attr_accessor :numbers, :value, :cleared
  def initialize
  	@numbers = []
  	@value = 0
  	@cleared = true
  	@raise_error = proc {raise "calculator is empty" if @numbers.length < 2}
  end

  def push(num)
  	@numbers << num
  end


  def plus
  	@raise_error.call
  	@value = @numbers.pop + @numbers.pop
  	@numbers << @value
  	@value
  end

  def minus
  	@raise_error.call
  	@value = -(@numbers.pop) + @numbers.pop
  	@numbers << @value
  	@value
  end

  def times
  	@raise_error.call
  	@value = @numbers.pop * @numbers.pop
  	@numbers << @value
  	@value
  end

  def divide
  	@raise_error.call
  	first = numbers.pop.to_f
  	second = numbers.pop.to_f
  	@value = second/first
  	@numbers << @value
  	@value
  end

  def tokens(string)
  	token = string.split.map! do |x|
	  if ('0'..'9').include?(x)
	  	x.to_i
	  else
	  	x.to_sym 
	  end
  	end
  	token
  end

  def evaluate(string)
  	string.split.each do |x|
  	  case x
  	  when '0'..'9' then push(x.to_i)
  	  when '+' then plus
  	  when '-' then minus	
  	  when '*' then times
  	  when '/' then divide		
  	  else puts "ERROR"
  	  end
  	end
  	@value
  end
end
