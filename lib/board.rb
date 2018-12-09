require_relative './piece.rb'

class Board
  attr_accessor :row

  def initialize
    @row = Array.new(8) { |column| Array.new(8)}
  end

  def populate
    type_order = "rook, knight, bishop, queen, king, bishop, knight, rook".split(", ")
    type_order.map!{ |type| type.to_sym }
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
  end

  def move(initial_position, new_position)
    initial = @row[initial_position[0]][initial_position[1]]
    final = @row[new_position[0]][new_position[1]]

    if initial.legal_move?(new_position)
      initial.position = new_position
      @row[initial_position[0]][initial_position[1]], @row[new_position[0]][new_position[1]] = final, initial
    end
    show_board
  end

  private

  def show_board
    @row.reverse.each do |column|
      types = []
      column.each do |piece|
        if piece
          types << piece.type.to_s + piece.color.to_s
        else
          types << piece
        end
      end
      puts types.to_s
    end
  end
end
