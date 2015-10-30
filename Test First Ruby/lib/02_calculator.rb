# Magfurul Abeer
# 5/14/15

def add(x,y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(arr)
  arr.inject(0, &:+)
end

def multiply(*numbers)
  numbers.inject(&:*)
end

def power(x, n)
  x**n
end

def factorial(x)
  return x == 0 ? 0 : (1..x).inject(&:*)
end

