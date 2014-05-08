# Coin sums
# Problem 31

# In England the currency is made up of pound, £, and pence, p, 
# and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?

# answer = 73682 (remember to add 1 more for the two pound coin)
# time = .382

def hundred
  g = 100
  @count = 0
  0.upto(2) do |i|
    sum = 0
    sum += g * i

    if sum == 200
      @count += 1 
    else
      fifty(sum)
    end
  end
  puts "count is #{@count}"
end

def fifty(sum) 
  fsum = sum
  f = 50
  0.upto(4) do |i|
    sum = fsum
    sum += f * i
    break if sum > 200

    if sum == 200
      @count += 1
    elsif sum < 200
      twenty(sum)
    end
  end 
end

def twenty(sum) 
  esum = sum
  e = 20
  0.upto(10) do |i|
    sum = esum
    sum += e * i
    break if sum > 200

    if sum == 200
      @count += 1
    elsif sum < 200
      ten(sum)
    end
  end 
end

def ten(sum) 
  dsum = sum
  d = 10
  0.upto(20) do |i|
    sum = dsum
    sum += d * i
    break if sum > 200

    if sum == 200
      @count += 1
    elsif sum < 200
      five(sum)
    end
  end 
end

def five(sum) 
  csum = sum
  c = 5
  0.upto(40) do |i|
    sum = csum
    sum += c * i
    break if sum > 200

    if sum == 200
      @count += 1
    elsif sum < 200
      two(sum)
    end
  end 
end

def two(sum) 
  bsum = sum
  b = 2
  0.upto(100) do |i|
    sum = bsum
    sum += b * i
    break if sum > 200

    if sum == 200
      @count += 1
    elsif sum < 200
      one(sum)
    end
  end 
end

def one(sum) 
  asum = sum
  a = 1
  0.upto(200) do |i|
    sum = asum
    sum += 1 * i
    break if sum > 200

    if sum == 200
      @count += 1
    end
  end 
end

puts hundred

