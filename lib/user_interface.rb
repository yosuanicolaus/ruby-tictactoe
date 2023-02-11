class UserInterface
  def initialize
    clear
    puts 'Welcome to Tic Tac Toe!'
    puts 'by Yosua Nicolaus 2023'
    puts ''
  end

  def get_player_data
    puts 'Player 1 name: '
    p1name = gets.chomp
    puts 'Player 1 symbol: <A-Z>'
    p1symb = get_input_symbol

    puts 'Player 2 name: '
    p2name = gets.chomp
    puts 'Player 2 symbol: <A-Z>'
    p2symb = get_input_symbol(p1symb)

    [p1name, p1symb, p2name, p2symb]
  end

  def display_turn(board, player)
    clear
    puts "#{player.name}'s turn <#{player.symbol}>"
    puts board.get_display
    puts ''
  end

  def get_move(board, player)
    puts "@#{player.name} - Enter a number (0 - 8)"
    input = gets.chomp.to_i

    if input < 0 || input > 8
      puts 'Number has to be between 0-8!'
      return get_move(board, player)
    elsif board.filled?(input)
      puts "Index #{input} has been filled!"
      return get_move(board, player)
    end
    input
  end

  def display_end(board, winner = nil)
    clear
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
    answer = gets.chomp[0]

    if answer.nil? || answer.upcase == 'Y'
      true
    elsif answer.upcase == 'N'
      puts 'Thanks for playing!'
      false
    else
      play_again?
    end
  end

  private def get_input_symbol(previous_symbol = nil)
    input = gets.chomp

    if input.length != 1
      puts 'Symbol has to be of 1 letter!'
      return get_input_symbol
    elsif input.ord < 65 || input.ord > 90
      puts 'Symbol has to be between A-Z range!'
      return get_input_symbol
    elsif input == previous_symbol
      puts 'Symbol has been taken!'
      return get_input_symbol
    end
    input
  end

  private def clear
    puts `clear`
  end
end
