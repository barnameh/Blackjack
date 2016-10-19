require_relative 'card'
require 'pry'


class Deck
  #CARD_SUITS = ["♠︎", "♣︎", "♥︎", "♦︎"]
  CARD_SUITS = ["s", "c", "h", "d"]
  CARD_FACES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  attr_reader :deck

  def initialize
    @deck = []
    CARD_SUITS.each {|suit| CARD_FACES.each {|face| @deck << (suit + face)}}
  end

  def deal_a_card
    deck_card = deck.sample
    deck.delete(deck_card)
    suit = deck_card.chr
    face = deck_card.delete(suit)
    card = Card.new(suit, face)
  end

  def shuffle
    deck.shuffle
  end
end
