# #12 Highly Divisible Triangular Number

# The sequence of triangle numbers is generated by adding the natural numbers. 
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. 

# The first ten terms would be: 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors? 

# answer = 76576500
# time = 1.9s   not fast, but better, old version was 3.08s 

class TrinumberDivisors
  
  def initialize 
    next_term
  end
 
  def next_term
    num = 1
    next_num = 2

    while divisors(num)
      num += next_num
      next_num += 1
    end

    num
  end

  def divisors(num)
    limit = num
    i = 4
    count = 0

    return true if num % 2 != 0 || num % 3 != 0 
    
    while i < limit do
      if num % i == 0
        if num / i > i
          count += 2
          limit = num / i
        else
          count += 1
        end
      end
              
      i += 1 
    end

    return false if count > 494
    true
  end
  # i starts at 4 and count > 494 because the divisors pairs 1, 2, 3 have already been tested 
  # most highly abundant numbers are disvisible by 2 and 3, but I tested the long way first

end

puts TrinumberDivisors.new.next_term
