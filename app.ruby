require './cell.rb'
require './grid.rb'
grid= Grid.new(3,3)
cell= Cell.new(grid.grid)
cell.fill_grid
grid.print
puts grid.grid[2,1]
puts cell.count_neighbors(2,1)
