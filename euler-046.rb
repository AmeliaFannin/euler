
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

require 'Prime'

def goldbach
  odd = Enumerator.new do |y|
    i = 3
    
    loop do
      y << i
      i += 2
    end
  end
  
  while true do 
    num = odd.next 

    next if num.prime?
    
    return num unless check(num)   
  end
end

def check(num)
  Prime.each(num - 2) do |p|
    next unless (num - p) % 2 == 0
      
    square = (num - p) / 2
    root = Math.sqrt(square)

    return true if square % root == 0
  end
end

puts goldbach