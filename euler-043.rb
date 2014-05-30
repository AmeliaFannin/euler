# Sub-string divisibility
# Problem 43

# The number, 1406357289, is a 0 to 9 pandigital number because 
# it is made up of each of the digits 0 to 9 in some order, 
# but it also has a rather interesting sub-string divisibility property.

# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. 
# In this way, we note the following:

# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.

# answer = 16695334890
# time = 2.8s



def string_div
  sum = 0

  # set up pandigital array
  digits = []
  (0..9).each {|i| digits << i}

  # checks substrings of all pandigitals
  digits.permutation.each do |i| 

    # filters pandigitals
    next unless i[0] == 1 || i[0] == 4 && i[5] == 5
      
    1.upto(7) do |a|
      num = i[a, 3].join.to_i

      break unless divisible(num, a)
    
      sum += i.join.to_i if a == 7
      # puts i.join if a == 7
    end
    
  end
  
  sum
end

def divisible(num, a)
  primes = [2, 3, 5, 7, 11, 13, 17]

  # test for divisibility by next prime
  return true if num % primes[a - 1] == 0
end



puts string_div