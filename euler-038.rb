# Pandigital multiples
# Problem 38

# Take the number 192 and multiply it by each of 1, 2, and 3:

# 192 × 1 = 192
# 192 × 2 = 384
# 192 × 3 = 576
# By concatenating each product we get the 1 to 9 pandigital, 192384576. 
# We will call 192384576 the concatenated product of 192 and (1,2,3)

# The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, 
# giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

# What is the largest 1 to 9 pandigital 9-digit number that can be formed 
# as the concatenated product of an integer with (1,2, ... , n) where n > 1?

# answer = 932718654
# time = .12s

def pandigitalmultiples
  largest_pandigital = 0

  1.upto(9999) do |a|
    digits = []  
    i = 1
    
    until digits.length >= 9
      (a * i).to_s.each_char do |b|
        digits << b
      end
      i += 1
    end

    if digits.length == 9 && digits.include?("0") == false        
      if check(digits)
        puts "#{digits.join} is pandigital"
        largest_pandigital = digits.join.to_i if digits.join.to_i > largest_pandigital
      end 
    end
  end

  largest_pandigital
end

def check(digits)
  return true if digits.uniq!.nil?
end

puts pandigitalmultiples