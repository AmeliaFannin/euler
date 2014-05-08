# Amicable numbers
# Problem 21

# Let d(n) be defined as the sum of proper divisors of n 
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair 
# and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are
#  1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
#  The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
# (first amicable pair is 220 & 284)

# answer = 31626

class AmicableNumbers

  def initialize(range)
    @sum_of_amicable = 0
    first_number range
    puts @sum_of_amicable
  end
  
  # gets sum of proper divisors of first number
  def first_number(range)
    220.upto(range) do |a|
      limit = a - 1
      div = 2
      b = 1
      
      until div >= limit do  
        if a % div == 0
          limit = a / div
          b += div + limit  
        end 
        
        div += 1
      end
     
      amicable_test(a, b) if b > a && b < range 
    end
  end

  # checks for existance of amicable pair
  def amicable_test(a, b)
    sum = 1
    limit = b - 1
    div = 2
    
    until div >= limit do
      if b % div == 0
        limit = b / div
        sum += div + limit  
      end  
      
      div += 1
    end
    
    @sum_of_amicable += a + b if sum == a && a != b
  end
end

AmicableNumbers.new(10000) 