# Spiral primes
# Problem 58

# Starting with 1 and spiralling anticlockwise in the following way, 
# a square spiral with side length 7 is formed.

# 37 36 35 34 33 32 31
# 38 17 16 15 14 13 30
# 39 18  5  4  3 12 29
# 40 19  6  1  2 11 28
# 41 20  7  8  9 10 27
# 42 21 22 23 24 25 26
# 43 44 45 46 47 48 49

# It is interesting to note that the odd squares lie along the bottom right diagonal, 
# but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; 
# that is, a ratio of 8/13 ≈ 62%.

# If one complete new layer is wrapped around the spiral above, 
# a square spiral with side length 9 will be formed. 
# If this process is continued, what is the side length of the square spiral 
# for which the ratio of primes along both diagonals first falls below 10%?

# answer = 26241
# time = 25.1 sec, pretty slow.

require 'prime'

def square_side_length
  @prime = 0
  @total = 1

  side_length = 3
  layer = 1

  create_square(side_length, layer) 

  until percent do
    side_length = side_length + 2
    layer = layer + 1
    create_square(side_length, layer)    
  end

  side_length
end

def percent
  return true if @prime.to_f/@total.to_f * 100 < 10
end

def create_square(x, y)
  a = x * x
  b = a - (y * 4)
  c = a - (y * 2)
  d = c - (y * 4)

  diagonal_values = [a, b, c, d]

  diagonal_values.each { |i| @prime += 1 if i.prime? } 
  @total += 4
end

puts square_side_length