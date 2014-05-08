

# Reciprocal cycles
# Problem 26

# A unit fraction contains 1 in the numerator. The decimal representation 
# of the unit fractions with denominators 2 to 10 are given:

# 1/2 =   0.5
# 1/3 =   0.(3)
# 1/4 =   0.25
# 1/5 =   0.2
# 1/6 =   0.1(6)
# 1/7 =   0.(142857)
# 1/8 =   0.125
# 1/9 =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. 
# It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle
#  in its decimal fraction part.


class Decimalrepeat 

  def initialize 
    @repeat_length = 0
    @repeat_num = 0
    a = 1
    
    2.upto(999) do |b|
      @digits =[]
      puts "checking #{a}/#{b}"
      long_division a, b 
      puts "digits = #{@digits}"
    end
  end

  def long_division a, b
    i = 1

    if a < b
      a = a * 10 if b < 10
      a = a * 100 if b >= 10 && b < 100
      a = a * 1000 if b >= 100 
    end
    
    while b * i < a
      i += 1
    end
    
    if a % b == 0
      puts "finite"
    else
      d = i - 1
      @digits << d
      a = a - (b * d)
      
      @digits = @digits.drop_while {|x| x == 0}
      
      if @digits.length < 2
        long_division a, b 
      else
        check(a, b)
      end 
    end 
  end

  def check(a, b) 
    if @digits[0..@digits.length - 2].include?@digits.last
      
      if a < b
        a = a * 10 if b < 10
        a = a * 100 if b >= 10 && b < 100
        a = a * 1000 if b >= 100
      end

      if a / b == @digits[1]
        puts "1/#{b} confirmed repeat"
        if @digits.join.length - 1 > @repeat_length
          @repeat_length = @digits.join.length - 1
          @repeat_num = b  
          puts "@digits = #{@digits}"
        end
      end

      puts "1/#{@repeat_num} has the longest repeat of #{@repeat_length}"
    else
      long_division a, b
    end
  end


end

Decimalrepeat.new
