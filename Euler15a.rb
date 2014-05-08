# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid, 
# and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

# 137846528820

class Lattice
  def initialize 
    r = 20
    c = 20

    n = r + c
    nr = n - r

    @fpn = factorial_product n
    @fpr = factorial_product r 
    @fpnr = factorial_product nr
  end

  def factorial_product num
    (1..num).inject(:*)
  end

  def binomial
    @fpn / (@fpr * @fpnr)
  end 
end

puts Lattice.new.binomial