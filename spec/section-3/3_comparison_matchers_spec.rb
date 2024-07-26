RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(20).to be < 30

    expect(30).to be <= 30
    expect(22).to be >= 22
  end

  describe 100 do
    it { is_expected.to be < 200 }
    it { is_expected.to be >= 100 }
    it { is_expected.not_to be > 200 }
  end

  describe 'another comparison matcher' do
    let(:num) { 10 }

    it 'is a test' do
      expect(num).to be >= 10
      expect(num).to be < 15
      expect(num).to be <= 11
      expect(num).to be > 9
    end
  end
end
