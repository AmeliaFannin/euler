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
# (actually 20161 according to internets)
# can be written as the sum of two abundant numbers. 
# However, this upper limit cannot be reduced any further by analysis 
# even though it is known that the greatest number that cannot be expressed 
# as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum 
# of two abundant numbers.


#This solution gets the correct answer but is really slow - suggestions?

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
# (actually 20161 according to internets)
# can be written as the sum of two abundant numbers.
# However, this upper limit cannot be reduced any further by analysis
# even though it is known that the greatest number that cannot be expressed
# as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.


# answer = 4179871
#time = 4.4 s

require 'set'

def sum(scope)
  integers = Array(1..scope)
  abundants = []
  sum = 0

  # collects abundants into array
  12.upto(scope - 12) do |num|
    div_sum = 1
    d = 2
    limit = num

    while d < limit do
      if num % d == 0
        limit = num / d
        if limit == d
          div_sum += d
        else
          div_sum += limit + d
        end
      end

      d += 1
    end

    abundants << num if div_sum > num
  end

  # removes sums of abundants from integers array
  x = abundants.length - 1
  non_matching_ints = []

  abundants.each_with_index do |a, i|
    # puts "Looking at abundant num #{i}"
    abundants[i..x].each do |b|
      current = a + b
      if current < scope
        non_matching_ints << current
      else
        break
      end
    end
  end

  resulting_ints = Set.new(integers) - Set.new(non_matching_ints)

  # gets sum of non-abundant sums left behind
  resulting_ints.each {|i| sum += i}
  sum
end

puts sum 20161