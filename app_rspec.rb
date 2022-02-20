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

describe Cell do
    describe '.fillGrid' do
        it 'Should fill the grid with a random number between 0 and 1' do
            expect(Cell.new(Grid.new(2,2).grid).fillGrid).to include(0..1)
        end
    end
end
