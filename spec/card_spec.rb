class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit}"
  end
end