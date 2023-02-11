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

  def display_turn(board, player)
    puts "#{player.name}'s turn <#{player.symbol}>"
    puts board.get_display
  end

  def get_move(player)
    puts "@#{player.name} - Enter a number (0 - 8)"
    gets.chomp.to_i
  end

  def display_end(board, winner = nil)
    puts '------------------------------'
    puts board.get_display
    puts 'Game End!'
    if winner.nil?
      puts 'Result - Draw'
    else
      puts "Result - #{winner.name} win!"
    end
  end

  def play_again?
    puts 'Would you like to play again? [Y/n]'
    answer = gets.chomp
    case answer[0].upcase
    when 'Y'
      true
    when 'N'
      false
    else
      play_again?
    end
  end
end
