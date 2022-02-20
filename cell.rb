# frozen_string_literal: true

require 'Matrix'
class Cell
  def initialize(grid)
    @grid = grid
  end

  def fillGrid
    @grid.each do |_e|
      e = rand(2)
    end
    @grid
  end
end
