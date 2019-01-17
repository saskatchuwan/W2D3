require 'rspec'
require 'card'

#create spec to test input value types for @value and @suit

describe Card do
  subject(:card) {Card.new(1, :heart)}

  describe '#initialize' do
    it 'should set a value for the card' do
      expect(card.value).to eq(1)
    end

    it 'should set a suit for the card' do
      expect(card.suit).to eq(:heart)
    end
  
  end


  




end