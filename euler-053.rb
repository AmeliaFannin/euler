# Combinatoric selections
# Problem 53

# There are exactly ten ways of selecting three from five, 12345:

# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

# In combinatorics, we use the notation, (5)C3 = 10.

# In general,

# nCr = 
# n!
# r!(n−r)!
# ,where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: (23)C10 = 1144066.

# How many, not necessarily distinct, values of  nCr, for 1 ≤ n ≤ 100, are greater than one-million?

# 15941.56

# answer = 4075
# time = .266s

def combos
  count = 0

  23.upto(100) do |n|
    2.upto(n-1) do |r|
      count += 1 if formula(n, r)
    end
  end

  count
end

def bang(num)
  num.downto(1).reduce(:*)
end

def formula(n, r)
  return true if bang(n) / (bang(r) * bang(n-r)) > 1000000
end

puts combos