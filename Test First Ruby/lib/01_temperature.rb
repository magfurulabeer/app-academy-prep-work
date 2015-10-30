# Magfurul Abeer
# 5/14/15

def ftoc(degrees)
  converted = (degrees-32)/(1.8)
  return converted > (converted.ceil - 0.1) ? converted.ceil : converted 
  # The last line would be unnecessary if the specification used a be_within rather than ==
end

def ctof(degrees)
  degrees*1.8 + 32
end
