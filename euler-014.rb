# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

#837799

def collatz limit
  start_num = 3
  most_terms = 0
  answer_num = 0

  while start_num < limit do
    num = start_num 
    terms = 1
    
    while num > 1 do
      if num.even?
        num = num / 2
      else
        num = (3 * num) + 1
      end
      
      terms += 1
    end
    
    if terms > most_terms
      most_terms = terms
      answer_num = start_num 
    end
    
    start_num += 2
   end

  answer_num
end

puts collatz 1000000