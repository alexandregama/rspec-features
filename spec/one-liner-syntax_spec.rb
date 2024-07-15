RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end

RSpec.describe Array do
  subject { [1, 2] }

  context 'with classic syntax' do
    it 'should have 2 elements' do
      expect(subject).to eq([1, 2])
    end
  end

  context 'with on-liner syntax' do
    it { is_expected.to eq([1, 2]) }
  end
end