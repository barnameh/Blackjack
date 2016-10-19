require 'minitest/autorun'
require 'minitest/pride'
require_relative 'deck'

class DeckTest < Minitest::Test

  def test_Deck_class
    assert Deck
  end

  def deck
    ::Deck.new
  end

  def test_deal_card
    card = deck.deal_a_card
    p card
    assert_instance_of Card, card
  end

  def test_wont_deal_a_card_twice
    new_deck = deck

    52.times do
      card = new_deck.deal_a_card
      p card
    end

  end

end
