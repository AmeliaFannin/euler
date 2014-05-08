# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 55 => 11, 80 => 5, 30 => 5, 26 => 13

# works, slower than others

require 'prime'

class FastPrime

  def initialize(num)
    @num = num
    @i   

    if @num.prime?
      puts @num
    else
      short_cut
    end
  end

  def short_cut
    if @num.even?
      @i = @num / 2
    elsif @num % 3 == 0
      @i = @num / 3
    else
      @i = @num / 5
    end

    prime
  end

  def prime
    if @i.prime?
      
      factors
    else
      @i = @i - 1

      prime
    end  
  end

  def factors
    if @num % @i == 0
      puts @i
    else
      @i = @i - 1

      prime
    end
  end

end

FastPrime.new(80067)
