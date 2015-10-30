class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize 
  	@seconds, @minutes, @hours = 0,0,0
  end

  

  def time_string
  	self.convert
  	return "#{'%02d' % @hours}:#{'%02d' % @minutes}:#{'%02d' % @seconds}"
  end

  def convert
  	while(@seconds > 60)
	  	  @seconds -= 60
	  	  @minutes += 1	
	end
	while(@minutes > 60)
	  	  @minutes -= 60
	  	  @hours += 1	
	end
  end

end

