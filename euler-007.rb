# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number? 104743

require 'prime'

def last_prime i
  primes = []
  primes = Prime.first i
  puts "Answer is #{primes.last}"
end


last_prime 10001