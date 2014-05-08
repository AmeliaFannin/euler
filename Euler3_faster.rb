# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 55 => 11, 80 => 5, 30 => 5, 26 => 13

# works, fast until about 50000

require 'prime'

class FastPrime

  def initialize(num)
    @num = num
    @prime_factors = []
    @short_num = 0

    if @num.prime?
      puts @num
    else
      short_cut
    end
    puts @prime_factors.last
  end
  
  def short_cut
    if @num.even?
      @short_num = @num / 2
    else 
      @short_num = @num / 3
    end

    get_largest_prime
  end

  def get_largest_prime
    Prime.downto(@short_num) do |prime|
      if @num % prime == 0
        @prime_factors << prime
      end
    end
  end
end



FastPrime.new(55)
