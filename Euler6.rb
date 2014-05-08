# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the 
# first ten natural numbers and the square of the sum is 
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of 
# the first one hundred natural numbers and the square of the sum.
# 25164150

class EulerSix

  def initialize min, max
    min = min
    max = max
    difference = 0

    @range = [] 
    @sum_squares = 0
    @square_sum = 0

    while max >= min do
      @range << max 
      max = max - 1
      # puts @range
    end

    sum_of_squares
    square_of_sum

    difference = @square_sum - @sum_squares
    puts difference
  end

  def sum_of_squares
    @range.each do |i|
      @sum_squares = @sum_squares + (i * i)
    end
    # puts @sum_squares
  end

  def square_of_sum
    sum = 0

    @range.each do |i|
      sum = sum + i
    end

    @square_sum = sum * sum
    # puts @square_sum
  end
end

EulerSix.new 1, 100