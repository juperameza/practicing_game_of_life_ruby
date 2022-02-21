# frozen_string_literal: true

require 'matrix'
class Cell
  def initialize(grid)
    @grid = grid
    @neighbors = 0
  end

  def fill_grid
    @grid.each_with_index do |_e, row, col|
      @grid[row, col] = rand(2)
    end
    @grid
  end

  def count_neighbors(row, col)
    sum = 0
    if row.zero? && col.zero?
      sum += @grid[row, col + 1]
      sum += @grid[row + 1, col]
      sum += @grid[row + 1, col + 1]
    elsif row.zero? && col == @grid.column_size - 1
      sum += @grid[row, col - 1]
      sum += @grid[row + 1, col]
      sum += @grid[row + 1, col - 1]
    elsif row == @grid.row_size - 1 && col.zero?
      sum += @grid[row - 1, col]
      sum += @grid[row - 1, col + 1]
      sum += @grid[row, col + 1]
    elsif row == @grid.row_size - 1 && col == @grid.column_size - 1
      sum += @grid[row - 1, col]
      sum += @grid[row - 1, col - 1]
      sum += @grid[row, col - 1]
    elsif row.zero?
      
      sum += @grid[row, col - 1]
      sum += @grid[row + 1, col - 1]
      sum += @grid[row, col + 1]
      sum += @grid[row + 1, col]
      sum += @grid[row + 1, col + 1]
   
    elsif col.zero?
     
      sum += @grid[row - 1, col]
      sum += @grid[row - 1, col + 1]
      sum += @grid[row, col + 1]
      sum += @grid[row + 1, col]
      sum += @grid[row + 1, col + 1]
   
    elsif row == @grid.row_size - 1
      
      sum += @grid[row, col - 1]
      sum += @grid[row - 1, col - 1]
      sum += @grid[row, col + 1]
      sum += @grid[row - 1, col]
      sum += @grid[row - 1, col + 1]

   
    elsif col == @grid.column_size - 1
    
      sum += @grid[row - 1, col]
      sum += @grid[row - 1, col - 1]
      sum += @grid[row, col - 1]
      sum += @grid[row + 1, col]
      sum += @grid[row + 1, col - 1]
    else

      (-1..1).each do |i|
        (-1..1).each do |j|
          
          sum += @grid[row+i, col+j] unless i == row && j == col
        end
      end
    end

    # for i  in -1.. 1 do
    #   for  j  in -1..1 do
    #      rows = (row + i + @grid.row_size) % @grid.row_size
    #      cols = (col + j + @grid.column_size) % @grid.column_size
    #     sum += @grid[rows,cols];
    #   end
    # end
    # sum -= @grid[row,col];
    sum.to_i
  end
end
