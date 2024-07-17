RSpec.describe 25 do
  it 'can test multiple values' do
    expect(subject).to be_odd
    expect(subject).to be > 20
  end

  it 'can test multiple matchers at once' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat').and end_with('pillar') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end

RSpec.describe 'firetruck' do
  it 'checks for substring' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'checks if the number is even and responds to the times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'checks some values in the array' do
    expect(subject).to include(42).and start_with(4, 8, 15)
  end
end

RSpec.describe 'some compound tests' do
  let(:text) { 'firetruck' }
  let(:number) { 20 }
  let(:array) { [4, 8, 15, 16, 23, 42] }

  it 'checks a substring' do
    expect(text).to start_with('fire').and end_with('ck')
  end

  it 'checks the number' do
    expect(number).to be_even.and respond_to(:times)
  end

  it 'checks the array' do
    expect(array).to include(42).and start_with(4, 8, 15)
  end
end
