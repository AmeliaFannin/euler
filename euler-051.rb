# Prime digit replacements
# Problem 51

# By replacing the 1st digit of the 2-digit number *3, 
# it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

# By replacing the 3rd and 4th digits of 56**3 with the same digit, 
# this 5-digit number is the first example having seven primes among the ten generated numbers, 
# yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. 
# Consequently 56003, being the first member of this family, is the smallest prime with this property.

# Find the smallest prime which, by replacing part of the number
 # (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.
# answer: 121313
# time: .352s

require 'Prime'

def digit_replacements

  # Prime number generator
  prime_gen = Enumerator.new do |y|
    loop do
      Prime.each {|p| y << p }
    end
  end

  prime = prime_gen.peek
  while prime < 1000000 do
    prime = prime_gen.next
    
 
      return prime if digits(prime) == true && prime_has_big_family(prime)
    
  end
end

def digits(num)
  digit_array = []

  return false if num.to_s.length < 5
  
  # puts num into array
  num.to_s.each_char {|d| digit_array << d}
  
  # checks repeated digits not including last digit & that repeated digits are 0, 1, or 2
  digit_array[0..-2].each {|i| return true if digit_array[0..-2].count(i) == 3 && i.to_i <= 2}
end

def prime_has_big_family(num)
  digit_array = []
  count = 0
  
  # puts num into array
  num.to_s.each_char {|d| digit_array << d}

  # replaces repeated digits and check for prime
  0.upto(9) do |r|
    version = []
    
    digit_array.each do |digit|

      break if count < 1 && r > 2
      
      if digit_array[0..-2].count(digit) == 3
        version << r
      else
        version << digit
      end
    end

    count += 1 if version[0] != 0 && version.join.to_i.prime?
  end

  return count == 8
end

puts digit_replacements



