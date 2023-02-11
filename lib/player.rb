class Player
  attr_reader :name, :symbol
  attr_accessor :active

  def initialize(name, symbol, active)
    @name = name
    @symbol = symbol
    @active = active
    @moves = []
  end
end
