require 'rspec'
require 'card'

#create spec to test input value types for @value and @suit

describe Card do
  subject(:card) {Card.new(1, :hearts)}

  describe '#initialize' do

    context 'sets correct values for card' do
      it 'should set a value for the card' do
        expect(card.value).to eq(1)
      end

      it 'should accept only integers' do
        expect(card.value).to be_an(Integer)
      end

      it 'should raise ArgumentError if input value is not between 1 and 13' do
        expect {Card.new(14, :hearts)}.to raise_error(ArgumentError)
      end
    end

    context 'sets correct suits for card' do
      it 'should set a suit for the card' do
        expect(card.suit).to eq(:hearts)
      end

      it 'raises invalid suit error if not valid suit' do
        expect {Card.new(9, :square)}.to raise_error("Invalid suit")
      end
    end
  
  end
end