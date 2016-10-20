require_relative 'card'
require_relative 'deck'
require_relative 'hand'


class Blackjack

  def initialize
    @deck = Deck.new.shuffle

    @player_hand = Hand.new_deck
    @player_hand.add_card(deck.deal_a_card)
    @player_hand.add_card(deck.deal_a_card)
    if self.check_for_win_or_loss(@player_hand) == "Blackjack"
      @game_on = false
      "Blackjack"
    end

    @dealer_hand = Hand.new_deck
    @dealer_hand.add_card(deck.deal_a_card)
    @dealer_hand.add_card(deck.deal_a_card)

    @game_on? = true
  end

  def check_for_win_or_loss(hand)
    hand_value =  hand.get_value
    if hand_value == 21
      "Blackjack!"
    elsif hand_value > 21
      "loss"
    else
      "#{hand_value}"
    end
  end

  def hit
    @player_hand.add_card(deck.deal_a_card)
    self.check_for_win_or_loss(@player_hand)
  end

  def stand
    while @dealer_hand.get_value < 17
      @dealer_hand.add_card
    end
    self.check_for_win_or_loss(@player_hand)
  end



end
