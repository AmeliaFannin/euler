# Digit factorials
# Problem 34


# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

# def factorial(n)
#   return 1 if n.zero?
#   1.upto(n).inject(:*)
# end

# answer = 40730

def factorials
  n_array = []
  answer = 0
 
  10.upto(40600) do |num|
    sum = 0
    
    num.to_s.each_char do |i|
      if i == "0"
        sum += 1
      else
        sum += 1.upto(i.to_i).inject(:*)
      end
      break if sum > num
    end
  
    n_array << num if sum == num
  end

  n_array.each {|n| answer += n }
  answer
end

puts factorials