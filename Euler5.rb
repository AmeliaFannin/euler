# 2520 is the smallest number that can be divided by each of 
# the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is 
# evenly divisible by all of the numbers from 1 to 20?


class EulerFive

  def initialize min, max
    @min = min
    @max = max
    @range = []
    @max_index = 0
    @num = 0
    @int = 2
    @answer = 0
    @index = 0
    @turn = 0

    while @max >= @min do
      @range << @max 
      @max = @max - 1
    end
    
    @max_index = @range.length - 1

    get_num
  end

  def get_num
    @num = @range[0] * @int
    @index = 0
    @turn += 1
    
    check_num
  end

  def check_num
    
    if @num % @range[@index] == 0  
      @turn += 1
      
      if @index == @max_index 
        @answer = @num
        puts "this is the answer: #{@answer}"
        puts "turns = #{@turn}"
      else
        @index += 1
        check_num
      end

    else
      @int += 1
      get_num
    end
  end
end

EulerFive.new 1, 12

