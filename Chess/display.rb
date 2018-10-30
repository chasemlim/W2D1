require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end
  
  def render
    emoji = "\u1f602"
    @board.grid.each_with_index do |row, row_idx|
      puts row.map { |piece| piece.is_a?(NullPiece) ? " " : "\u1f4a9" }.join(" ")
    end
    @cursor.get_input
  end
end

if $PROGRAM_NAME == __FILE__
  b = Board.new
  d = Display.new(b)
  d.render
end