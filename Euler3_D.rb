# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 55 => 11

def even(num)
  @num = num
  largest = 2

  while @num % 2 == 0 do
    @num = @num / 2
  end

  if @num == 1
    puts "answer is #{largest}"
  else
    get_prime_factor
  end
end

def get_prime_factor
  odd = 3
  largest = 0
  
  while @num != 1 do

    while @num % odd == 0 do
      @num = @num / odd
      largest = odd
    end
    
    odd = odd + 2
  end

  puts "answer is #{largest}"
end


even(600851475143)