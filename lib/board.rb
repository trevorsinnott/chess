class Board
  attr_accessor :row

  def initialize
    @row = Array.new(8) { |column| Array.new(8)}
  end
end
