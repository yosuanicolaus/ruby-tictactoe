class Board
  def initialize
    @board = ['/', '/', '/', '/', '/', '/', '/', '/', '/']
    @status = 'empty'
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
end
