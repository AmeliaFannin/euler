
# Circular primes
# Problem 35

# The number, 197, is called a circular prime because all rotations of the 
# digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 
# 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

# answer = 55
# time = 2.8 s

require 'Prime'

def circ_primes
  count = 0

  Prime.each(1000000) do |p|
    if p.to_s.length > 1
      if check p 
        puts "#{p} is circular"
        count += 1
      end  
    else
      puts p
      count += 1
    end
  end
  
  count
end

def check p
  # test for non-prime possibles
  no_digits = ["0", "2", "4", "5", "6", "8"]
  digits = p.to_s.split("")
  l = digits.length
    
  return false unless (digits & no_digits).empty? 
  
  # test rotations for prime?
  digits = digits * 2

  0.upto(l-1) do |i|
    return false unless digits[i, l].join.to_i.prime?
  end

  return true
end 


puts circ_primes