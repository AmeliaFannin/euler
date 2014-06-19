
# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples(limit)
  sum = 0

  1.upto(limit) do |num| 
    if num % 3 == 0
      puts "#{num} is divisible by 3"
      sum += num
    elsif num % 5 == 0
      puts "#{num} is divisble by 5"
      sum += num
    else
      puts "#{num} is poop"
    end
  end

  puts "answer is #{sum}"
end

multiples(1000)