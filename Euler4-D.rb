# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers 
# is 9009 = 91 × 99.

# Find the largest palindrome made from the product of 
# two 3-digit numbers.


class Palindrome 
  def initialize n
    @i = 0
    @param = n
    @given_length = n.to_s.length
    @x = n
    @y = n
    @pal = 0

    iterate_x
    puts "Answer is #{@pal}"
  end
  
  def iterate_x
    while @x.to_s.length == @given_length do  
      @i += 1
      
      @num = @x * @y
      @x = @x - 1
      pal_check
    end

    iterate_y
  end

  def iterate_y
    if @y.to_s.length == @given_length
      @i += 1

      @x = @param
      @y = @y - 1
      
      iterate_x
    end
  end

  def pal_check
    if @num.to_s.reverse == @num.to_s
      if @num > @pal
        @pal = @num
      end
    end
  end

end

Palindrome.new 999