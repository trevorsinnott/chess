require './lib/board'

describe Board do
  describe "#initialize" do
    it "sets row to a 2d array" do
      board = Board.new
      expect(board.row[0].is_a?(Array)).to eql (true)
    end
  end

  describe "#populate" do
    it "populates the board with all the pieces in starting position" do
      board = Board.new
      board.populate
      expect(board.row[0][0].type).to eql(:rook)
    end
  end

  describe "#move" do
    it "moves piece from initial position to new position" do
      board = Board.new
      board.populate
      board.move([1,0], [2,0])
      expect(board.row[2][0].type).to eql(:pawn)
    end
  end
end
