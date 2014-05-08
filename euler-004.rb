# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers 
# is 9009 = 91 × 99.

# Find the largest palindrome made from the product of 
# two 3-digit numbers.


class Palindrome 

  def initialize x
    @num = 12
    @x = x 
    @original_x = x
    @y = x
    @i = 0
    @pal = 0

    iterate_x
  end
  
  def iterate_x
    while @x > 9 do  
      @num = @x * @y
      @i += 1
      @x = @x - 1

      if @num.to_s.reverse == @num.to_s
        @pal = @num
        @x = 8
      end
    end

    puts @pal
    iterate_y
  end

  def iterate_y
    @x = @original_x
    @y -= 1
    @num = @x * @y
    @i += 1
    
    if @num.to_s.reverse == @num.to_s
      if @num > @pal
        @pal = @num
        @x = 8 
        puts "largest palindrome = #{@pal}"
      else
        iterate_x
      end
    end
  end
end

Palindrome.new 99