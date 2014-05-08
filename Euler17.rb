#17
# Number Letter Counts

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
# how many letters would be used?


# NOTE: Do not count spaces or hyphens. 
# For example, 342 (three hundred and forty-two) contains 23 letters 
# and 115 (one hundred and fifteen) contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

# use hash or liguistics gem or require 'numbers_and_words'
# 1,2,6,10 = 3
# 4,5,9  = 4
# 3,7,8,40,50,60 = 5
# 11, 12, 20,30,80,90 = 6
# 15, 16, 70 = 7
# 13, 14, 18, 19 = 8
# 17 = 9




def letter_count
  letters = Hash[1, 3, 2, 3, 6, 3, 10, 3, 4, 4, 5, 4, 9, 4, 3, 5, 7, 5, 8, 5, 40, 5, 50, 5, 60, 5, 11, 6, 12, 6, 20, 6, 30, 6, 80, 6, 90, 6, 15, 7, 16, 7, 70, 7, 13, 8, 14, 8, 18, 8, 19, 8, 17, 9]
  words = Hash["and", 3, "hundred", 7, "thousand", 8]
  num = 99
  digits = []
  x = 0
  count = 0

  # while num < 101
    
    if num > 20 
      digits = num.to_s.split(//)
      puts digits

      if digits.length == 2 
        if num % 10 == 0
          count += letters[num].to_i
        else
          count += letters[digits[0].to_i * 10] + letters[digits[1].to_i] 
        end
      
      elsif digits.length == 3
          
        if digits[1] == 0
          count += letters[digits[0].to_i] + words["hundred"] + words["and"] + letters[digits[2].to_i]
        elsif digits[1] == 1
          count += letters[digits[0].to_i] + words["hundred"] + words["and"] + letters[digits[1,2].to_i.join]
        else
          count += letters[digits[0].to_i] + words["hundred"] + words["and"] + letters[digits[0].to_i * 10] + letters[digits[1].to_i]
        end
      
      else
        count += letters[digits[0].to_i] + words["thousand"]
      end
    
    else 
      count += letters[num].to_i
    end  
    count
        
  #   num += 1
  # end

  count
end
puts letter_count