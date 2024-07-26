RSpec.describe 'start_with and end_with matchers' do
  describe 'Ruby on Rails' do
    it 'checks for substring at the beginning' do
      expect(subject).to start_with('Ruby')
      expect(subject).to start_with('Ruby on')
      expect(subject).not_to start_with('ruby')
    end

    it { is_expected.to start_with('Ruby') }
    it { is_expected.to start_with('R') }
  end

  describe 'Ruby on Rails' do
    it 'checks for substring at the end' do
      expect(subject).to end_with('Rails')
      expect(subject).to end_with('s')
      expect(subject).not_to end_with('S')
    end

    it { is_expected.to end_with('Rails') }
    it { is_expected.not_to end_with('rails') }
  end

  describe [:a, :b, :c, :d] do
    it 'checks for elements at the beginning of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
    end

    it 'checks for elements at the end of the array' do
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:c, :d) }
  end
end
