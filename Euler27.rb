# Quadratic primes
# Problem 27
# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive values
 # n = 0 to 39. 
 # However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, 
 # and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered, 
# which produces 80 primes for the consecutive values n = 0 to 79. 
# The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression
 # that produces the maximum number of primes for consecutive values of n, 
 # starting with n = 0.

# answer = -59231
# time = 24.642 s

require 'prime'

def quads
  primes = 0
  product = 0
  
  n = 0
  -1000.upto(1000) do |a|
    -1000.upto(1000) do |b|
      n = 0
      last_prime = 0
        until n == b
          num = (n * n) + (a * n) + b
          
          if num.prime?
            n += 1
            last_prime = num
          else
            break  
          end  
        end
        
        if n > primes
          product = a * b 
          primes = n
          puts "Coefficients #{a},#{b}, #{primes} primes, last prime = #{last_prime}"
        end
    end
  end

  puts "#{primes} primes, product of coefficients is #{product}"
end


puts quads


