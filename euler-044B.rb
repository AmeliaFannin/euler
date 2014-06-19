# Pentagon numbers
# Problem 44

# Pentagonal numbers are generated by the formula, Pn=n(3n−1)/2. 
# The first ten pentagonal numbers are:

# 1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

# It can be seen that P4 + P7 = 22 + 70 = 92 = P8. 
# However, their difference, 70 − 22 = 48, is not pentagonal.

# Find the pair of pentagonal numbers, Pj and Pk, 
# for which their sum and difference are pentagonal 
#   and D = |Pk − Pj| is minimised; what is the value of D?

# answer: 5482660
# time: 1.3 s
# time(with nested enumerators instead of collecting into an array): 22.5 s

def pentagon
  pent_array = []

  pent = Enumerator.new do |y|
    n = 1
    loop do 
      p = (n * (3 * n - 1)) / 2
      y << p
      n += 1
    end
  end

  while true do
    num1 = pent.next
    
    pent_array.each do |num2|
      diff = num1 - num2
      sum = num1 + num2
      
      return diff if pent_check(diff) && pent_check(sum)   
    end

    pent_array << num1
  end
end

def pent_check(num) 
  return true if (Math.sqrt(24 * num + 1) + 1)% 6 == 0 
end

puts pentagon