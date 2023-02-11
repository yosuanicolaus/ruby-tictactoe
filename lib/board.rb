class Board
  def initialize
    @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end

  def fill(index, symbol)
    @board[index] = symbol
  end

  def get_display
    "   |   |   \n" +
      " #{@board[0]} | #{@board[1]} | #{@board[2]} \n" +
      "___|___|___\n" +
      "   |   |   \n" +
      " #{@board[3]} | #{@board[4]} | #{@board[5]} \n" +
      "___|___|___\n" +
      "   |   |   \n" +
      " #{@board[6]} | #{@board[7]} | #{@board[8]} \n" +
      '   |   |   '
  end

  def end?
    b = @board
    [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
      [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
    ].each do |position|
      x, y, z = position
      return true if b[x] == b[y] && b[x] == b[z]
    end
    false
  end
end
