# Permuted multiples
# Problem 52

# It can be seen that the number, 125874, and its double, 251748, 
# contain exactly the same digits, but in a different order.

# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

# answer = 142857
# time = .8s

def multiples
  num = 1
  num += 1 while checks_digits(num)
  num
end

def checks_digits(num)
  original = manipulate_num(num)
  
  2.upto(6) do |a| 
    return true if original != manipulate_num(num * a)
  end

  false
end

def manipulate_num(num)
  array = []
  num.to_s.each_char {|i| array << i}

  array.sort
end

puts multiples