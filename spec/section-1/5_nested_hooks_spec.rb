RSpec.describe 'Nested hooks' do
  before(:context) do
    puts 'OUTER before context'
  end

  after(:context) do
    puts 'OUTER after context'
  end

  before(:example) do
    puts 'OUTER before example'
  end

  after(:example) do
    puts 'OUTER after example'
  end

  it 'does some basic math' do
    expect(1 + 5).to eq(6)
  end

  context 'Basic math' do
    before(:context) do
      puts 'INNER before context'
    end

    before(:example) do
      puts 'INNER before example'
    end

    after(:context) do
      puts 'INNER after context'
    end

    after(:example) do
      puts 'INNER after example'
    end

    it 'does some sum' do
      expect(1 + 5).to eq(6)
    end

    it 'also does some subtraction' do
      expect(6 - 1).to eq(5)
    end
  end
end
