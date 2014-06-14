# Consecutive prime sum
# Problem 50

# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, 
# and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

# answer: 997651

# time: .38s

require 'prime'

def prime_sum
  p_array = []
  limit = 1000000
  
  Prime.each(limit) do |p|
    p_array << p
  end

  upper_index = p_array.length - 1

  prime_sum = 0
  terms = 0
  
  0.upto(upper_index - terms) do |a| 
    (a + terms).upto(upper_index - a) do |b|  
      sum = 0
      
      p_array[a..b].each do |i|
        sum += i
        break if sum > limit
      end
    
      break if sum > limit
            
      if sum.prime? 
        # puts "#{b-a + 1} terms"
        terms = b - a + 1
        prime_sum = sum 
      end
    end
  end
 
  prime_sum
end

puts prime_sum