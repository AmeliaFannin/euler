
# Truncatable primes
# Problem 37

# The number 3797 has an interesting property. Being prime itself, 
# it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. 

# Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable from left to right 
# and right to left.

# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

# answer = 748317
# time = 2.45 s

require 'Prime'

def primes
  count = 0
  sum = 0

  Prime.each do |p| 
    p_array = p.to_s.split("") 
    l = p_array.length - 1 
      
    if p > 10 and right_truncate(p_array, l) and left_truncate(p_array, l)
      # puts "#{p}"
      count += 1
      sum += p 
    end
    return sum unless count < 11
  end
end

def right_truncate(p_array, l)
  l.downto(1) do |i|  
    return false unless p_array[0, i].join.to_i.prime?
  end
end

def left_truncate(p_array, l)
  0.upto(l) do |i|  
    return false unless p_array[i..l].join.to_i.prime?
  end
end

puts primes
