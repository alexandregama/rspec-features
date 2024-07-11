RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'has two elements and then 1 element' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'has two elements, indication the isolation of the subject object' do
    expect(sally.length).to eq(2)
  end
end