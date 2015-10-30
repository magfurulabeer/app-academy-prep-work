def measure(num = 1)
  sum = 0
  num.times do 
  	start = Time.now
  	yield 
  	end_time = Time.now
  	sum += (end_time - start)
  end
  return (sum/num) 
end

