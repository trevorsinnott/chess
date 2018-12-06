require './lib/piece'

describe Piece do
  describe "#initialize" do
    it "takes position as argument" do
      piece = Piece.new("white", "pawn", [0, 0])
      expect(piece.position).to  eql([0, 0])
    end

    it "takes color as argument" do
      piece = Piece.new("white", "pawn", [0, 0])
      expect(piece.color).to eql("white")
    end

    it "takes type as argument" do
      piece = Piece.new("white", "pawn", [0, 0])
      expect(piece.type).to eql("pawn")
    end
  end
end
