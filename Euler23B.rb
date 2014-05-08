# Non-abundant sums
# Problem 23

# A perfect number is a number for which the sum of its proper divisors is exactly equal 
# to the number. 
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, 
# which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n 
# and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, 
# the smallest number that can be written as the sum of two abundant numbers is 24. 
# By mathematical analysis, it can be shown that all integers greater than 28123 
# can be written as the sum of two abundant numbers. 
# However, this upper limit cannot be reduced any further by analysis 
# even though it is known that the greatest number that cannot be expressed 
# as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum 
# of two abundant numbers.
# all odd #'s below 945



def nonabundant_sums
  abundants = []

  sum_of_not = 0
  int = 0

  # tests and collects abundants into array
  12.upto(28123) do |num|
    div_sum = 1
    d = 2
    limit = num
    
    if num.even? || num >= 945
      while d < limit do 
        if num % d == 0
          limit = num / d
          div_sum += limit + d
        end
        
        d += 1
      end

      abundants << num if div_sum > num

      if num.odd? && div_sum > num
        puts (num % 945)
      end
    end
  end

end

#   # checks all integers to see if can be written
#   1.upto(28123) do |i|
#     x = 0
#     int = i - abundants[x]

#     if int <= 0 
#       sum_of_not += i
#     else
#       until abundants[x] >= i or abundants[x] == abundants.last do
#         break if abundants.include?(int)
#         x += 1   
#       end
#     end

#   # get sum of integers that cannot be written
#     if abundants[x] >= i
#       sum_of_not += i
#     end
#   end

#   puts sum_of_not
# end

nonabundant_sums