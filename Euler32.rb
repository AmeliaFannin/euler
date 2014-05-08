# Pandigital products
# Problem 32

# We shall say that an n-digit number is pandigital 
# if it makes use of all the digits 1 to n exactly once; 
# for example, the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, 
# containing multiplicand, multiplier, and product is 1 through 9 pandigital.


# Find the sum of all products whose multiplicand/multiplier/product identity 
# can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only 
# include it once in your sum.

# answer : 45228
# time : 4.9s

def panda 
  sum = []
  total = 0
  example = []
  1.upto(9) {|i| example << i.to_s}
  
  1.upto(98) do |a|
    123.upto(9876) do |b|
      product = a * b
      a_array = []
      b_array = []
      p_array = []
      next if a.to_s.length == b.to_s.length
      
     
      a.to_s.each_char {|i| a_array << i}
     
      b.to_s.each_char {|i| b_array << i}
      
      product.to_s.each_char {|i| p_array << i}
  
      next if sum.include?(product) == true
      
      # pandigital check
      big_array = p_array + a_array + b_array 
      if big_array.sort! == example
        puts "#{a}, #{b}, #{product} = unique pandigital"
        sum << product  
      end
    end
  end

  sum.each {|i| total += i}
  total
end

puts panda

