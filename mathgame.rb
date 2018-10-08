require './Question'
require './Game'
require './Player'

p1 = Player.new('Raymond')
p2 = Player.new('Hi')
p3 = Player.new('3')

game = Game.new(p1, p2, p3)
game.start