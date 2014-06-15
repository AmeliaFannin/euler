# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# answer: 6857
# time: .082s

require 'prime'

def prime_factors
  largest_factor = Prime.prime_division(600851475143).last

  largest_factor.flatten[0]
end

puts prime_factors
