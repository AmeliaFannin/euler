3
7 4
2 4 6
8 5 9 3

find_path(0,0)
cell_val = 3
      
      path_a = find_path(1, 0)
      cell_val = 7 (+ 4 + 9)(max)

              path_a = find_path(2, 0)
              cell_val = 2 (+ 8)

                      path_a = find_path(3, 0)
                      cell_val = 8 (max)

                      path_b = find_path(3, 1)
                      cell_val = 5

              path_b = find_path(2, 1)
              cell_val = 4 (+ 9 max)
                      path_a = find_path(3, 1)
                      cell_val = 5

                      path_b = find_path(3, 2)
                      cell_val = 9 (max)

      path_b = find_path(1, 1)
      cell_val = 4 (+6 +9)

              path_a = find_path(2, 1)
              cell_val = 4 (+ 9)

                      path_a = find_path(3, 1)
                      cell_val = 5

                      path_b = find_path(3, 2)
                      cell_val = 9 (max)

              path_b = find_path(2, 2)
              cell_val = 6 (+ 9)(max)

                      path_a = find_path(3, 2)
                      cell_val = 9 (max)

                      path_b = find_path(3, 3)
                      cell_val = 3
  
  