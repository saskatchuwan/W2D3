require 'rspec'
require 'deck'


describe Deck do
  subject(:deck) { Deck.create }

  describe '#initialize' do
    let(:deck) { Deck.new }
    it 'should initialize to an empty array' do
      expect(deck.collection).to be_empty
    end
  end

  describe '::create' do
    it 'should have length of 52' do
      expect(deck.collection.length).to eq(52) 
    end

    it 'should only contain Cards' do
      expect(deck.collection).to all( be_a(Card) )
    end
  end

  describe '#shuffle!' do
    let(:ordered_deck) { Deck.create }
    it 'should shuffle the cards' do 
      deck.shuffle!
      expect(deck.collection).to_not eq(ordered_deck.collection)
    end
  end



end