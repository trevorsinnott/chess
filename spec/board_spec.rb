require './lib/board'

describe Board do
  describe "#initialize" do
    it "sets row to a 2d array" do
      board = Board.new
      expect(board.row.is_a?(Array)).to eql (true)
    end
  end
end
