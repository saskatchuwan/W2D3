require_relative 'card'

class Deck
  SUITS = [:hearts, :spades, :clubs, :diamonds].freeze
  VALUES = (1..13).to_a.freeze
  

  def self.create
    deck = Deck.new

    SUITS.each do |suit|
      VALUES.each do |val|
        deck.collection << Card.new(val, suit)
      end
    end

    deck
  end

  attr_reader :collection

  def initialize
    @collection = []
  end

  def shuffle!
    @collection.shuffle!
  end

  private

  # attr_writer :collection
  
end