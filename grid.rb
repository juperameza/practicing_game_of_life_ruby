# frozen_string_literal: true

require 'matrix'
class Grid
  attr_accessor :grid

  def initialize(row, col)
    @row = row
    @col = col
    @grid = Matrix.build(row, col) { 0 }
  end

  def print
    result = ''
    @row.times do |i|
      @col.times do |j|
        result += @grid[i, j] == 1 ? '*' : '°'
      end
      result += "\n"
    end
    puts result
  end
end
