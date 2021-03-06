# The sum of the squares of the first ten natural numbers is,

# 1*2 + 2*2 + ... + 10*2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10).sqrt = 552 = 3025
# Hence the difference between the sum of the squares of the 
# first ten natural numbers and the square of the sum is 
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of 
# the first one hundred natural numbers and the square of the sum.
# 
# answer: 25164150
# time: .084s

def sum(limit)
  sum1 = 0
  sum2 = 0
  1.upto(limit) do |i| 
    sum1 += i**2
    sum2 += i
  end

  sum2 ** 2 - sum1
end

puts sum(100)