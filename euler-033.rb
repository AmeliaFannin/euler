# Digit canceling fractions
# Problem 33

# The fraction 49/98 is a curious fraction, as an inexperienced mathematician 
# in attempting to simplify it may incorrectly believe that 49/98 = 4/8, 
# which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction, 
# less than one in value, and containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms, 
# find the value of the denominator.

# answer: 16/64, 19/95, 26/65, 49/98
# time = .065 s

def digits
  answers = []

  10.upto(99) do |a|
    (a + 1).upto(99) do |b|
      
      @a_divisors = []
      @b_divisors = []
      
      # determine common and uncommon digits
      numer = []
      denom = []

      # investigate array comprehensions
      a.to_s.each_char {|a| numer << a unless numer.include?(a)}
      b.to_s.each_char {|b| denom << b unless denom.include?(b)}
      common_digits = numer & denom
      
      # skip fractions without common digits or 0 as common digit
      next if common_digits.empty?
      next if common_digits.include?("0")

      # gather divisors
      divisors(a, @a_divisors)
      divisors(b, @b_divisors)

      # find common divisors, skip fractions without common divisors
      common_divisors = @a_divisors & @b_divisors
      common_divisors.delete(1)

      next if common_divisors.length < 1 

      common_digits.each do |j| 
        numer.delete(j)
        denom.delete(j)
      end

      common_divisors.each do |i|
        orig_frac = numer[0].to_f / denom[0].to_f if denom[0].to_i != 0
        reduced_frac = (a.to_f/i)/(b.to_f/i)
       
        if orig_frac == reduced_frac
          puts "#{a}/#{b}"  
        end
      end

    end
  end

end

def divisors(i, array)
  d = 1
  limit = i

  until d >= limit do
    if i % d == 0
      array << d
      array << i / d
      limit = i / d
      d += 1
    else
      d += 1
    end
  end
end

digits

