require_relative './piece.rb'

class Board
  attr_accessor :row

  def initialize
    @row = Array.new(8) { |column| Array.new(8)}
  end

  def populate
    type_order = "rook, knight, bishop, queen, king, bishop, knight, rook".split(", ")
    @row[0] = @row[0].each_with_index.map do |piece, index|
      piece = Piece.new(:white, type_order[index], [0, index])
    end
    @row[1] = @row[1].each_with_index.map do |piece, index|
      piece = Piece.new(:white, :pawn, [0, index])
    end
    @row[6] = @row[6].each_with_index.map do |piece, index|
      piece = Piece.new(:black, :pawn, [0, index])
    end
    @row[7] = @row[7].each_with_index.map do |piece, index|
      piece = Piece.new(:black, type_order[index], [0, index])
    end
    puts @row.to_s
  end
end
