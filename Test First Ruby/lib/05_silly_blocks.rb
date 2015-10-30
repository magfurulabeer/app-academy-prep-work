# Magfurul Abeer
# 5/14/15

def reverser
  arr = yield.split
  arr.map!(&:reverse).join(' ')
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  num.times { yield }
end