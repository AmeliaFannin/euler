# Powerful digit sum
# Problem 56

# A googol 10 to 100th power is a massive number: one followed by one-hundred zeros; 
# 100 to 100th power is almost unimaginably large: one followed by two-hundred zeros. 
# Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, a to bth power, where a, b < 100, 
# what is the maximum digital sum?

# answer: 972
# time: .263s

def googol
  max_digital_sum = 0
  
  2.upto(99) do |a|
    2.upto(99) do |b|
      sum = 0
      (a ** b).to_s.each_char { |n| sum += n.to_i }
  
      max_digital_sum = sum if sum > max_digital_sum
    end
  end

  max_digital_sum
end



puts googol