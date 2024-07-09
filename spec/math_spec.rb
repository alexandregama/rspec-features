RSpec.describe 'math calculations' do
  it 'does basic math' do
    expect(5 * 3).to eq(15)
    expect(1 + 9).to eq(10)
  end

  it 'does more complex math' do
    expect(10 / 5).to eq(3)
    expect(2 * 8).to eq(16)
  end
end