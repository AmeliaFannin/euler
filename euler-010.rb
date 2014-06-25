# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# answer: 142913828922
# time: .4s

require 'prime'

def prime_sum
  sum = 0

  Prime.each do |prime|
    break if prime > 2000000
    sum += prime 
  end

  sum
end

puts prime_sum