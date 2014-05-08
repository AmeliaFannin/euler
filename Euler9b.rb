# A Pythagorean triplet is a set of three natural numbers, 
# a < b < c, for which,

# a squared + b squared = c squared
# For example, 3 squared + 4 squared = 9 + 16 = 25 = 5 squared.
# a+b+c = 3+4+5 = 12

# There exists exactly one Pythagorean triplet 
# for which a + b + c = 1000.
# Find the product abc.


  def construct sum
    @sum = sum
    @m = 1
    @n = @m + 1

    check
  end

  def check
    product = 0
    triplet = []

    a = (@n ** 2) - (@m ** 2) 
    b = @m * @n * 2
    c = (@n ** 2) + (@m ** 2)
    num = a + b + c
    
    if num == @sum 
      @triplet = [a, b, c]
      product = a * b * c

      puts "answer is #{@triplet} and product is #{product}"
    elsif num < @sum
      @n += 1

      check
    else
      @m += 1
      @n = @m + 1

      check
    end
  end


construct 1000
