# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers 
# is 9009 = 91 × 99.

# Find the largest palindrome made from the product of 
# two 3-digit numbers.

# answer: 906609
# time: .103s

def palindrome
  largest_pal = 0

  999.downto(100) do |m|
    1.upto(899) do |n|
      num = m * (m - n)
      
      break if num < largest_pal
      
      largest_pal = num if pal_check(num) 
    end
  end

  largest_pal
end

def pal_check(num)
  num_array = []

  num.to_s.each_char {|i| num_array << i}

  return true if num_array == num_array.reverse
end

puts palindrome