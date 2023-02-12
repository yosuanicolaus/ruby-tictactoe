require_relative './game'

begin
  Game.new
rescue Interrupt
  puts ' ~ See you later!'
end
