
class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
  end

  def pos=(val)
  end

  def Symbol
  end

  private
  def move_into_check?(end_pos)
  end

end
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X]

module Slideable
  HORIZONTAL_DIRS = [ 
    (x == x && y.between?(0,7)) || (y == y && x.between?(0,7))
  DIAGONAL_DIRS = []

  def horizontal_dirs
  end

  def diagonal_dirs
  end

  def moves
  end

  private
  def move_dirs
  end

  def grow_unblocked_moves_in_dir(dx,dy)
  end

end


module Stepable

  def moves
  end

  private
  def move_diffs
  end
end



module Singleton

end