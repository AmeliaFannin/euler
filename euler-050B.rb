# Consecutive prime sum
# Problem 50

# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, 
# and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require 'prime'

def prime_sum
  prime_array = []
  
  Prime.each(100) do |p|
    prime_array << p
  end

  longest_prime = 2
  longest_sum = 0

  limit = prime_array.length
  
    
    0.upto(limit - longest_prime - 1) do |i|
    
      sample = prime_array.slice(i, longest_prime + 1)
      sum = 0

      puts "start at #{i} for length #{longest_prime}"

      sample.each do |s|
        puts sample
        sum += s
      end

      if sum.prime?
        puts "prime sum series #{longest_prime}"
        longest_sum = sum
        longest_prime += 1
      end

    end
  end


  puts longest_sum

end

puts prime_sum