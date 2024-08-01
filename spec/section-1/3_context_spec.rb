RSpec.describe '#even? method' do
  before(:context) do
    puts 'Before context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  after(:context) do
    puts 'After context'
  end

  it 'should return true if number is even' do
    expect(4.even?).to eq(true)
  end

  it 'should return false if number is odd' do
    expect(5.even?).to eq(false)
  end

  describe 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end

  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
