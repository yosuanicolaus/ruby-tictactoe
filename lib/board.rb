class Board
  def initialize
    @board = ['/', '/', '/', '/', '/', '/', '/', '/', '/']
    @status = 'empty'
  end

  def fill(index, symbol)
    @board[index] = symbol
  end

  def render
    puts '   |   |   '
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '___|___|___'
    puts '   |   |   '
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '___|___|___'
    puts '   |   |   '
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts '   |   |   '
  end
end
