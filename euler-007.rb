# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number? 
# answer: 104743
# time: .118s

require 'prime'

def last_prime i
  Prime.first(i).last
end

puts last_prime 10001