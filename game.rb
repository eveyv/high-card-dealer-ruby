require 'pry'

require_relative "lib/deck"
require_relative "lib/hand"
require_relative "lib/player"


puts "GAME START\n"

player_deck = Deck.new
binding.pry
puts "There are #{player_deck.size} cards in the deck \n"

player_one = Player.new("Joey Crack", Hand.new(player_deck))
player_two = Player.new("Big Pun", Hand.new(player_deck))

puts "#{player_one.name} was dealt #{player_one.show_hand}\n#{player_two.name} was dealt #{player_two.show_hand}\n\n"

puts "#{player_one.name}'s hand value: #{player_one.hand_object.sum}"
puts "#{player_two.name}'s hand value: #{player_two.hand_object.sum}"

winner = player_one
if player_two.hand_object.sum == player_one.hand_object.sum
  puts "Tie!"
else
  if player_two.hand_object.sum > player_one.hand_object.sum
    winner = player_two
  end
  puts "#{winner.name} wins the game!"
end
