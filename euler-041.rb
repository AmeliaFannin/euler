# Pandigital prime
# Problem 41

# We shall say that an n-digit number is pandigital 
# if it makes use of all the digits 1 to n exactly once. 
# For example, 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital prime that exists?

# answer = 7652413
# time = 1.65

require 'prime'

def panprime
  n = 2
  largest = 0

  until n > 9 do
    digits = []
    (1..n).each {|i| digits << i }
    
    digits.permutation.each do |a|
      num = a.join.to_i
      
      next if num % 2 == 0 || num % 3 == 0
      
      if prime(num)
        largest = num if num > largest
      end
    end
    
    n += 1
  end

  largest
end

def prime(num)
  return true if num.prime?
end

puts panprime