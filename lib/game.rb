require_relative 'board'
require_relative 'player'
require_relative 'user_interface'

class Game
  def initialize
    @board = Board.new
    @ui = UserInterface.new
    @turn = 0

    p1n, p1s, p2n, p2s = @ui.get_player_data
    @player_one = Player.new(p1n, p1s, true)
    @player_two = Player.new(p2n, p2s, false)
    game_loop
  end

  def game_loop
    active_player = @turn.even? ? @player_one : @player_two
    @ui.display_turn(@board, active_player)
    move_position = @ui.get_move(@board, active_player)
    @board.fill(move_position, active_player.symbol)

    return end_game(active_player) if @board.end?
    return end_game if @board.draw?

    @turn += 1
    game_loop
  end

  def end_game(winner = nil)
    @ui.display_end(@board, winner)
    return unless @ui.play_again?

    @board.reset
    @turn = 0
    game_loop
  end
end
