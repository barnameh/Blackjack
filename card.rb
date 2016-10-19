class Card
  attr_reader :suit
  attr_reader :face
  attr_reader :face_value

  def initialize(suit, face)
    @suit = suit
    @face = face
    @face_value = 55
    @face_value = value(face)
  end

  def value(face)
    case face.upcase
    when "A"
      11
    when "J", "Q", "K"
      10
    else
      face.to_i
    end
  end
end
