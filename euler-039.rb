# Integer right triangles
# Problem 39

# If p is the perimeter of a right angle triangle with integral length sides, 
# {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

# answer = 840
# time = 5.3 s
 
def tri
  p_value = 0
  solutions = 0
  range = 12..1000
  
  # checking possible even perimeter values
  range.step(2) do |p|
    solution_count = 0

    # creating integer triangles. as shortest leg, a is less than 1/3 p
    1.upto(p / 3) do |a|
      a.upto(p - a) do |b|
        c = p - a - b

        # checking for right angle triangle
        if (a * a) + (b * b) == (c * c) 
          puts "p = #{p}, side = #{a}, #{b}, #{c}"
          solution_count += 1
        end 
      end
    end

    # compare solution count
    if solution_count > solutions
      solutions = solution_count
      p_value = p
    end
  end

  p_value
end

puts tri

