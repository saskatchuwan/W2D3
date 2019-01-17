class Card
  SUITS = [:hearts, :clubs, :spades, :diamonds]

  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError if value > 13 || value < 1
    raise "Invalid suit" if !SUITS.include?(suit)
    @value = value
    @suit = suit
  end

end