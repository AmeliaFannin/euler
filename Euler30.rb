# Digit fifth powers
# Problem 30
# Surprisingly there are only three numbers that can be written 
# as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written 
# as the sum of fifth powers of their digits.

# answer = 443839

def powers
  big_sum = 0
  limit = 9**5

  (2..Float::INFINITY).each do |num|
    a = num.to_s.length 
     sum = 0

    break if a > (limit * a).to_s.length

    num.to_s.each_char do |i|
      sum += i.to_i**5 
    end
    
    if sum == num
      big_sum += sum
      puts " found #{num}"
    end
  end

  big_sum
end

puts powers 

