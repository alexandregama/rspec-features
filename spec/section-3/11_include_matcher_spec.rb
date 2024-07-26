RSpec.describe 'include_matcher spec' do
  describe 'hot chocolate' do
    it 'checks for string texts' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('hot') }
    it { is_expected.to include('choc') }
    it { is_expected.to include('late') }
  end

  describe [10, 20, 30] do
    it 'checks for values in the array' do
      expect(subject).to include(10)
      expect(subject).to include(20, 30)
      expect(subject).to include(10, 20, 30)
    end

    it { is_expected.to include(10) }
    it { is_expected.to include(20, 30) }
  end

  describe ({ a: 1, b: 2, c: 3}) do
    it 'checks for values in the hash' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
      expect(subject).to include(a: 1)
      expect(subject).to include(a: 1, b: 2)
    end

    it { is_expected.to include(:a) }
    it { is_expected.to include(a: 1, b: 2) }
  end
end
