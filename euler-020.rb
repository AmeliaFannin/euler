# Factorial digit sum
# Problem 20

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

# 648

def factorial_digit_sum num
  sum = 0
  num.downto(1).inject(:*) # comment
    .to_s.each_char {|i| sum += i.to_i } #comment
  sum
end

puts factorial_digit_sum 100