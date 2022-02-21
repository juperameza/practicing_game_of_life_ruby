# frozen_string_literal: true

require 'rspec'
require_relative 'grid.rb'
require_relative 'cell.rb'
require 'matrix'
describe Grid do
    it 'Grid creates a matrix of row times col size' do
        expect(Grid.new(2,4).grid).to  eq(Matrix.build(2,4){0})
    end
    describe '.print' do
        it 'It should print on console the matrix' do
            expect { Grid.new(2,2).print}.to output("°°\n°°\n").to_stdout

        end
    end
end
grid = Grid.new(3,3)
cell = Cell.new(grid.grid)
cell.fill_grid
describe Cell do
    describe '.fillGrid' do
        it 'Should fill the grid with a random number between 0 and 1' do
            expect(Cell.new(Grid.new(2,2).grid).fill_grid).to include(0..1)
        end
    end
    describe '.count_neighbors' do
        
        it 'Count neighbors shouldn´t send more than 3 if the cell is on a corner' do
            expect(cell.count_neighbors(0,0)).to be <= (3) 
            expect(cell.count_neighbors(0,2)).to be <= (3)
            expect(cell.count_neighbors(2,0)).to be <= (3)
            expect(cell.count_neighbors(2,2)).to be <= (3)
        end
        it 'Count neighbors shouldn´t send more than 5 if the cell is on a a border' do
            expect(cell.count_neighbors(1,0)).to be <= (5)
            expect(cell.count_neighbors(0,1)).to be <= (5)
            expect(cell.count_neighbors(1,2)).to be <= (5)
            expect(cell.count_neighbors(2,1)).to be <= 5
        end
    end
end
