# Prime permutations
# Problem 49

# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, 
# is unusual in two ways: 

# (i) each of the three terms are prime, and, 
# (ii) each of the 4-digit numbers are permutations of one another.

# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, 
# exhibiting this property, but there is one other 4-digit increasing sequence.

# What 12-digit number do you form by concatenating the three terms in this sequence?

# answer: 296962999629
# time: .44s

require 'prime'

def prime_perms
  num = 1000
  
  while true do
    digits = []
    terms = []
 
    num.to_s.each_char {|a| digits << a.to_i}

    digits = digits.permutation.to_a.uniq.sort
    digits.each {|b| terms << b.join.to_i}

    if terms.include?(1487) == false
      terms = terms.keep_if {|c| c > 999 && c.prime?}

      if terms.length > 3 
        terms = terms.permutation(3).to_a

        terms.each do |d, e, f|
          if d < e && e < f && e - d == f - e 
            return [d, e, f].join
          end
        end 
      end
    end

    num += 1
  end
end

puts prime_perms
