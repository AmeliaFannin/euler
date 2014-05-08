# A Pythagorean triplet is a set of three natural numbers, 
# a < b < c, for which,

# a squared + b squared = c squared
# For example, 3 squared + 4 squared = 9 + 16 = 25 = 5 squared.
# a+b+c = 3+4+5 = 12

# There exists exactly one Pythagorean triplet 
# for which a + b + c = 1000.
# Find the product abc.

# answer is [375, 200, 425] and product is 31875000

def check(m, n, sum)
  a = (n ** 2) - (m ** 2) 
  b = m * n * 2
  c = (n ** 2) + (m ** 2)
  num = a + b + c
        
  if num != sum
    if num < sum
      n += 1
    else
      m += 1
      n = m + 1
    end
    return check(m, n, sum)
  end

  a * b * c
end


puts check(1, 2, 1000)

