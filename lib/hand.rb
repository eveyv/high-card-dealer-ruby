class Hand
  attr_reader :hand

  def initialize(deck)
    @hand = []
    4.times do
      @hand << Deck.new.deal
    end
  end

  def sum
    @hand.reduce(0) { |sum, card| sum + card.value }
  end
end
