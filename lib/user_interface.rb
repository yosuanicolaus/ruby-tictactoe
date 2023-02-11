class UserInterface
  def initialize
    puts 'Welcome to Tic Tac Toe!'
    puts 'by Yosua Nicolaus 2023'
    puts ''
  end

  def get_player_data
    puts 'Player 1 name: '
    p1name = gets.chomp
    puts 'Player 1 symbol: '
    p1symb = gets.chomp

    puts 'Player 2 name: '
    p2name = gets.chomp
    puts 'Player 2 symbol: '
    p2symb = gets.chomp

    [p1name, p1symb, p2name, p2symb]
  end

  def play_turn(player, board)
    puts "#{player.name}'s turn <#{player.symbol}>"
    puts board.get_display
    puts 'Enter a number (0 - 8)'
    gets.chomp.to_i
  end
end
