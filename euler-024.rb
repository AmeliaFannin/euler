# Lexicographic permutations
# Problem 24

# A permutation is an ordered arrangement of objects. 
# For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. 
# If all of the permutations are listed numerically or alphabetically, 
# we call it lexicographic order. 

# The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 
# 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

# answer: 2783915460

def lexoperms(limit) 
  digits = []
  0.upto(9) {|i| digits << i}
  
  perms = 1.upto(9).inject(:*)
  p = 0
  
  # identifies the first digit of millionth permutation
  1.upto(9) do |a|
    if perms * a >= limit
      p = a - 1
      # removes first digit from array for faster permutation calculation
      digits.delete(p)
      break
    end
  end

  # locates millionth permutation
  lex = digits.permutation.to_a.sort!
  i = limit - (perms * p) - 1
  
  # adds back in the first digit and display
  lex[i].unshift(p).join.to_i
end

puts lexoperms(1000000) 


