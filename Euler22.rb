# Names scores
# Problem 22

# Using names.txt (right click and 'Save Link/Target As...'), 
# a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, 
# multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, 
# COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
# is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

# # set `__DIR__` to the directory of the currently running ruby file
# __DIR__ = File.expand_path(File.dirname(__FILE__))

# # set `input` to the file object you want to access
# input = File.open(File.expand_path('filename.txt', __DIR__))

# # read the file content and set `data` to that value
# data = input.read

# # close the file after we're done reading it
# input.close

# answer: 871198282

__DIR__ = File.expand_path(File.dirname(__FILE__))
input = File.open(File.expand_path('names.txt', __DIR__))
data = input.read
input.close


def name_score data
  # set up alpha value hash
  alphaHash = Hash[('A'..'Z').map.with_index {|l, i| [l, i + 1] }]
  
  # parse name data
  names = data.split(',').sort

  # get total value
  total = 0
  names.each_with_index do |word, index|
    letter_score = 0  
    word.each_char {|l|letter_score += alphaHash[l].to_i}  
    total += letter_score * (index + 1)
  end

  total
end

puts name_score data