def long_division a, b
  i = 1
  digits =[]
  a = a * 10 if b <= 10
  a = a * 100 if b > 10 && b <= 100
  a = a * 1000 if b > 100

  puts "#{a}/#{b}has no repeat" if a % b == 0


  while b * i < a
    i += 1
  end
  
  if a % b != 0
    d = i - 1
    digits << d
    a = a - (b * d)
  else
    digits << i
  end

  puts "digits = #{digits}, a = #{a}, b = #{b}"
end

puts long_division 1, 7