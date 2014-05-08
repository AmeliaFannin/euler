# Double-base palindromes
# Problem 36


# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, 
# which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)


def pals
  sum = 0

  1.upto(1000000) do |num|
    n_array = num.to_s.split("")
    
    next unless n_array == n_array.reverse

    b_array = num.to_s(2).split("")

    next unless b_array == b_array.reverse

    puts "#{num} is double base palindrome"

    sum += num
  end
  sum
end

puts pals
