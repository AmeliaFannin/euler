# 16
# Power Digit sum
# 2 to the 15th power = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2 to the 1000th power?

def power_digit num, power
  sum = 0

  (num ** power).to_s.each_char do |digit|
    sum += digit.to_i   
  end 

  sum
end

puts power_digit 2, 1000

