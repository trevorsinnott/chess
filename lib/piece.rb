class Piece
  attr_accessor :color, :type, :position

  def initialize(color = nil, type = nil, position = nil)
    @color = color
    @type = type
    @position = position
  end
end
