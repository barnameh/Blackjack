require_relative 'card'

class Hand

  def initialize
    @cards = []
  end

  def add_card(card)
    @cards << card
  end

  def get_value
    @cards.reduce {|value, card| value += card.value}
  end
end
