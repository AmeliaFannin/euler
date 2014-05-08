#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

#answer = 233168
class Summer
    
  def initialize(r)
    @range_limit = r
    @multiples = []
    @num = 0
    @total = 0

    run_loop
  end

  def sum  
    @multiples.each do |m|
    @total = @total + m
    end
  end

  def get_multiples
    if (@num % 3 == 0 || @num % 5 == 0)
      @multiples<<@num
    end
  end

  def run_loop
    while (@num < @range_limit) do 
      get_multiples
      @num += 1
    end
    sum
    puts @total
  end
end

Summer.new(1000)