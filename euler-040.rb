# Champernowne's constant
# Problem 40

# An irrational decimal fraction is created by concatenating the positive integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, 
# find the value of the following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

# answer = 210
# time = 0.145 s


def champ
  # set up Enumerator
  digit = Enumerator.new do |y|
    a = 1
    loop do
      a.to_s.each_char do |i|
        y << i.to_i
      end
      a += 1
    end
  end

  # select digits and multiplies
  index = 1
  value = 1
    
  until index > 100000
    value = value * digit.take(index).last
    index = index * 10
  end
 
  value
end


puts champ