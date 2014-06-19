# Coded triangle numbers
# Problem 42

# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); 
# so the first ten triangle numbers are:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# By converting each letter in a word to a number corresponding 
# to its alphabetical position and adding these values we form a word value. 
# For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. 
# If the word value is a triangle number then we shall call the word a triangle word.

# Using words.txt (right click and 'Save Link/Target As...'), 
# a 16K text file containing nearly two-thousand common English words, 
# how many are triangle words?


__DIR__ = File.expand_path(File.dirname(__FILE__))
input = File.open(File.expand_path('euler-042-words.txt', __DIR__))
data = input.read
input.close

def trinum data
  triwordcount = 0

  # set up alpha-numeric hash
  letters = Hash[('A'..'Z').map.with_index {|l, i| [i + 1, l] }]
  
  # parse name data
  words = data.delete('"').split(',')

  # sum up alpha value of each word
  words.each do |a|
    sum = 0
    word = []
    a.each_char {|c| word << c}
    word.uniq.each {|b| sum += letters.key(b)} 
  
    if trianglecheck sum
      puts "#{a}, #{sum} is triangular"
      triwordcount += 1
    end
  end
  triwordcount
  
end  
  
def trianglecheck sum 
  # triangle number enumerator
  tri = Enumerator.new do |y|
    n = 0
    loop do 
      t = (n * 0.5)*(n + 1)
      y << t.to_i
      n += 1
    end
  end
  
  # checks if word sum is triangle number
  check = []
  until sum < tri.peek do 
    
    check << tri.next  
  end
  puts "#{sum} and #{check}"
  return true if check.last == sum

  
end



puts trinum data



