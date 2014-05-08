# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid, 
# and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?
# 137846528820

def lattice
  r = 20
  c = 20

  answer = 0

  n = r + c
  nr = n - r

  n_factorial = 1
  k_factorial = 1
  nr_factorial = 1
  denom = 0

  while n > 0
    n_factorial *= n
    n -= 1
  end

  while r > 0
    k_factorial *= r
    r -= 1
  end

  while nr > 0
    nr_factorial *= nr
    nr -= 1
  end

  denom = k_factorial * nr_factorial

  answer = n_factorial / denom

  puts answer
end



lattice