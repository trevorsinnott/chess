class Piece
  attr_accessor :color, :type, :position

  def initialize(color = nil, type = nil, position = nil)
    @color = color
    @type = type
    @position = position
    @moves = Hash.new
    @moves[:pawn] = [[1,0],[2,0],[1,1],[1,-1]]
    @moves[:knight] = [[1,2],[1,-2],[2,1],[2,-1],[-1,2],[-1,-2],[-2,1],[-2,-1]]
    @moves[:king] = [[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1],[0,-1],[1,-1]]
  end

  def legal_move?(new_position)
    move = []
    move << new_position[0] - @position[0]
    move << new_position[1] - @position[1]
    @moves[@type].include?(move)
  end

end
