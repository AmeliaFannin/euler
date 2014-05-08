# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

# @method prime_sum
# @desc Finds the sum...
# @returns integer

def prime_sum range
  range = range
  sum = 2
  i = 3

  while i < range do 
    if i.prime?
      sum = sum + i
    end

    i += 2
  end

  sum
end

puts prime_sum 100