# 2520 is the smallest number that can be divided by each of 
# the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is 
# evenly divisible by all of the numbers from 1 to 20?

require 'prime'

class EulerFive

  def initialize min, max
    min = min
    max = max

    @range = []
    @int = 1
    @index = 0
    @turns = 0
    @base_num = 1
    @full_num = 0

    while max >= min do
      @range << max 
      max = max - 1
    end
    
    base_num
    full_num
  end

  def base_num
    @range.each do |prime|
      if prime.prime?
      @base_num = @base_num * prime
      end
    end

    puts "base_num is #{@base_num}"
  end 

  def full_num
    @full_num = @base_num * @int
    @index = 0
    @turns += 1
    
    check_num
  end

  def check_num
    max_index = @range.length - 1

    if @full_num % @range[@index] == 0  
      @turns += 1
      
      if @index == max_index 
        puts "The answer is: #{@full_num}"
        puts "turns = #{@turns}"
      else
        @index += 1

        check_num
      end

    else
      @int += 1
      
      full_num
    end
  end
end

EulerFive.new 1, 20

