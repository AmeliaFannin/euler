# Distinct primes factors
# Problem 47

# The first two consecutive numbers to have two distinct prime factors are:

# 14 = 2 × 7
# 15 = 3 × 5

# The first three consecutive numbers to have three distinct prime factors are:

# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.

# Find the first four consecutive integers to have four distinct prime factors. 
# What is the first of these numbers?

# answer: 134043
# time: 8.5 s

require 'prime'

def primes_factors
  num = 210
  while true do 
    if factors(num) && factors(num + 1) && factors(num + 2) && factors(num + 3)
      return num
    end 
    num += 1  
  end
end

def factors(num)
  prime_factors = []
  limit = num
  i = 2
  
  while i < limit do
    if num % i == 0
      prime_factors << i 
      prime_factors << (num / i) if (num / i) != i 
    end

    limit = num / i
    
    i += 1 
  end

  return false if prime_factors.length < 4
  prime_factors = prime_factors.keep_if {|a| a.prime?}
  return true if prime_factors.length == 4
end


puts primes_factors