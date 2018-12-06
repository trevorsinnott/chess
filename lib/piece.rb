class Piece
  attr_accessor :color, :position, :type

  def initialize(color = nil, type = nil, position = nil)
    @color = color
    @type = type
    @position = position
  end
end
