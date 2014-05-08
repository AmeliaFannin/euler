# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 55 => 11, 80 => 5, 30 => 5, 26 => 13

# works, fast until about 50000

require 'prime'

class FastPrime

  def initialize(num)
    @num = num
    @all_primes = []
    # @prime_factors = []
    @short_num = 0
    @largest_prime_factor = 0
    @i = 0

    if @num.prime?
      puts @num
    else
    get_all_primes
    end

    puts @largest_prime_factor
  end
  
  def get_all_primes
    Prime.each(@num) do |prime|
    @all_primes << prime
    end
    
    @all_primes.reverse!
    
    largest_factor 
  end

  def largest_factor
    if (@num % @all_primes[@i] == 0)
      @largest_prime_factor = @all_primes[@i]
    else  
      @i += 1
      
    largest_factor
    end
  end 
end

FastPrime.new(80067)
