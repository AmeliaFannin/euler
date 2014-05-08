# A Pythagorean triplet is a set of three natural numbers, 
# a < b < c, for which,

# a squared + b squared = c squared
# For example, 3 squared + 4 squared = 9 + 16 = 25 = 5 squared.
# a+b+c = 3+4+5 = 12

# There exists exactly one Pythagorean triplet 
# for which a + b + c = 1000.
# Find the product abc.

class Triplet 

  def initialize sum
    @sum = sum
    @a = 1
    @b = @a + 1
    @c = @b + 1
    @trip = []

    iterate_c
  end

  def iterate_c
    while @a + @b + @c < @sum do
      @c += 1
    end
    
    check_trip
  end

  def iterate_b
    @b += 1
    @c = @b + 1
    iterate_c
  end

  def iterate_a
    @a += 1
    @b = @a + 1
    @c = @a + 2

    iterate_c
  end

  def check_trip
    if (@a * @a) + (@b * @b) == (@c * @c)
      @trip = [@a, @b, @c]
      puts "#{@trip} is a Pythagorean Triplet of #{@sum}"
    elsif @b + @c >= @sum - @a
      iterate_a
    else
      iterate_b
    end
  end
end

Triplet.new 30

