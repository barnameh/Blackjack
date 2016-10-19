require 'minitest/autorun'
require 'minitest/pride'
require_relative 'card'

class CardTest < Minitest::Test

  def test_card_class
    assert Card
  end

  def test_card_suit
    card = ::Card.new("h", "A")
    assert_equal '♠︎', card.suit, "card suit matches"
  end

  def test_card_face
    card = ::Card.new("h", "A")
    assert_equal 'A', card.face
  end

  def test_card_face_value
    card = ::Card.new("h", "A")
    assert_equal 5, card.face_value
  end
end
