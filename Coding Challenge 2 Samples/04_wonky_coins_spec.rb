# Magfurul Abeer
# 5/7/15

#require '04_wonky_coins'
#require 'rspec'

# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

# I just checked the solution posted and I love the idea of recursion.
# Definitely going to start trying to learn that.

def wonky_coins(n)
  coins = [n]              

  until coins.all? { |x| x == 0}                                                  
    num = coins[0]
    coins.push((num/2), (num/3), (num/4))
    coins.delete_at(0)
    coins.sort!.reverse!
  end
  coins.length                                         
end

puts wonky_coins(1) == 3
puts wonky_coins(5) == 11
puts wonky_coins(6) == 15
puts wonky_coins(0) == 1


=begin
describe "#wonky_coins" do
  it "handles a coin of value 1" do
    wonky_coins(1).should == 3
  end

  it "handles a coin of value 5" do
    wonky_coins(5).should == 11
    # 11
    # => [2, 1, 1]
    # => [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
    # => [[[0, 0, 0], 0, 0], [0, 0, 0], [0, 0, 0]]
  end

  it "handles a coin of value 6" do
    wonky_coins(6).should == 15
  end

  it "handles being given the zero coin" do
    wonky_coins(0).should == 1
  end
end
=end