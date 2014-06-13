
# Goldbach's other conjecture
# Problem 46

# It was proposed by Christian Goldbach that every odd composite number 
# can be written as the sum of a prime and twice a square.

# 9 = 7 + 2×1**
# 15 = 7 + 2×2**
# 21 = 3 + 2×3**
# 25 = 7 + 2×3**
# 27 = 19 + 2×2**
# 33 = 31 + 2×1**

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written 
# as the sum of a prime and twice a square?

# answer: 5777
# time: .27 s

require 'Prime'

def goldbach
  num = 3
  while true do
    return num unless check(num)
    num += 2
  end
end

def check(num)
  return true if num.prime?
  
  Prime.each(num - 2) do |p|
    remainder = num - p
    return true if Math.sqrt(remainder / 2) == Math.sqrt(remainder / 2).to_i
  end
end

puts goldbach