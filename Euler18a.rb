# Maximum path sum
# 18
# By starting at the top of the triangle below 
# and moving to adjacent numbers on the row below, 
# the maximum total from top to bottom is 23.

#    3
#   7 4
#  2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

#                          75
#                        95 64
#                      17 47 82
#                    18 35 87 10
#                  20 04 82 47 65
#                19 01 23 75 03 34
#               88 02 77 73 07 63 67
#             99 65 04 28 06 16 70 92
#           41 41 26 56 83 40 80 70 33
#         41 48 72 33 47 32 37 16 94 29
#       53 71 44 65 25 43 91 52 97 51 14
#      70 11 33 28 77 73 17 78 39 68 17 57
#     91 71 52 38 17 14 91 43 58 50 27 29 48
#   63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

# NOTE: As there are only 16384 routes, 
#  rt example [0][0], [1][1], [2][1], [3][1], [4][2], [5][3], [6][4], [7][4]

input = <<HEREDOC
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
HEREDOC

class Euler18 

  def initialize input
    @grid = []
    @largest_sum = 0

    input.split("\n").each do |line|
      row = []
      line.split(" ").each do |num|
        row << Integer(num, 10)
      end
      @grid << row
    end

    # pattern_one
    pattern_two
  end

  def path m, n
    sum = 0
    r = 0
    c = 0

    for r in 0..14 
      if r == m + 1
        c = n
      end
  
      puts @grid[r][c]
      sum += @grid[r][c]
    end
      puts sum 
      @largest_sum = sum if sum > @largest_sum
      puts @largest_sum   
  end

  def pattern_one
    m = 0
    n = 0

    while m <= 14 do
      path m, n
      
      m += 1
      n = 1
    end
  end

  def pattern_two
    m = 1
    n = 1
    
    path m, n
      
      m = 2
      n = 1
    path m, n

  end
end

Euler18.new(input)
