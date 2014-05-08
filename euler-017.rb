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




def letter_count limit
  letters = Hash[0, 0, 1, 3, 2, 3, 6, 3, 10, 3, 4, 4, 5, 4, 9, 4, 3, 5, 7, 5, 8, 5, 40, 5, 50, 5, 60, 5, 11, 6, 12, 6, 20, 6, 30, 6, 80, 6, 90, 6, 15, 7, 16, 7, 70, 7, 13, 8, 14, 8, 18, 8, 19, 8, 17, 9]
  words = Hash["and", 3, "hundred", 7, "thousand", 8]
  num = 1
  digits = []
  count = 0
  i = 0

  letters.each do |k, v|
    # puts "#{k}, #{v}"
  end

  # puts "HASH: #{letters[13]}"


  while num <= limit
    count_for_word = 0

    if num > 9
      digits = num.to_s.reverse.split(//)
  
      # puts "DIGITS[0]: #{digits[0]}, #{i}"
  
      if digits[1] == "1"
        count_for_word = letters[[digits[0], digits[1]].join.reverse.to_i]

      else
        count_for_word = letters[digits[0].to_i] +
                         letters[digits[1].to_i * 10]
      end
      count_for_word += letters[digits.fetch(2, 0).to_i] +
                        letters[digits.fetch(3, 0).to_i]

      if digits[2] != nil && digits[2] != "0"
        # if letters[[digits[0], digits[1]].join.reverse.to_i] != 0 
        if [digits[0], digits[1]].join.reverse != "00" 
          puts count_for_word

          count_for_word += words["hundred"] + words["and"]
        else
          count_for_word += words["hundred"]
        end
      end

      puts count_for_word

      if digits[3] != nil
        count_for_word += words["thousand"]
      end

    else
      count_for_word = letters[num].to_i
    end

    count += count_for_word
    num += 1
  end

  count    
end

puts letter_count 1000