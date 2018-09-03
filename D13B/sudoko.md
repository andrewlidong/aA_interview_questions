Sudoku
How would you write a program to solve Sudoku? (high level description)

Loop through all the empty cells, and for each cell generate a list of possible values. If a cell has only one possible value, fill it in.
Starting from the cells that have the shortest list of possible values, try the value, and recurse to see if the puzzle can be solved.
