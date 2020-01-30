require_relative "deck"

class Card
  attr_reader :rank, :suit

  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = value
  end

  def value
    RANKS.index(@rank) + 2
  end
end
