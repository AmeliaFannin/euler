# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence 
# whose values do not exceed four million, 
# find the sum of the even-valued terms.
# 4613732

class FibSequence

	def initialize(r, first, second)
		@range_limit = r
		@num1 = first
		@num2 = second
		@val = 0
		@total = 0

		fib_loop
	end

	def fib_loop(num1, num2)
		@val = @num1 + @num2
		@total += @val if @val % 2 == 0
		@num1 = @num2
		@num2 = @val

    while (@val < @range_limit) do
      return fib_loop
    end
    puts @total
	end

end

FibSequence.new(4000000, 1, 2)