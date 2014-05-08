# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 55 => 11

require 'prime'

class FastPrime

  def initialize num
    @num = num
    @max_factor = 0
    @i = 2

    if @num.prime?
      puts @num
    else
      get_factor
    end
  end
  
  def get_factor
    if @num % @i == 0  
      prime_check
    else
      @i = @i + 1

      get_factor
    end
  end

  def prime_check
    @max_factor = @num / @i 

    if @max_factor.prime?
      puts @max_factor
    else
      @i = @i + 1

      get_factor
    end
  end

end


FastPrime.new(60085147514)
