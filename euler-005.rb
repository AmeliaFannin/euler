# 2520 is the smallest number that can be divided by each of 
# the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is 
# evenly divisible by all of the numbers from 1 to 20?

#  answer: 232792560
#  time: 5.318s

def smallest_mult(num)
  until test(num) do
    num += 20
  end
      
  num
end

def test(num)
  [19, 17, 13, 11, 14, 18, 16].each do |i|
    return false unless num % i == 0   
  end
end


puts smallest_mult(2520)



