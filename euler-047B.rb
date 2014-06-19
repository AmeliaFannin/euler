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
# time: 11.5 s

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

def factors(i)
  num = i
  prime_factors = []
  
  Prime.each(num) do |p|
    prime_factors << p if num % p == 0
    num = num / p
  end

  return true if prime_factors.uniq.length == 4
end

puts primes_factors