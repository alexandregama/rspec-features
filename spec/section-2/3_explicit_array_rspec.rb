RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'has two elements and then 1 element - version 1' do
    expect(sally.length).to eq(2)

    sally.pop

    expect(sally.length).to eq(1)
  end

  it 'has two elements and then 1 element - version 2' do
    expect(subject.length).to eq(2)

    subject.pop

    expect(subject.length).to eq(1)
  end

  it 'has two elements, indication the isolation of the subject object' do
    expect(sally.length).to eq(2)
  end
end

RSpec.describe Hash do
  subject(:my_custom_hash) do
    { a: 1, b: 2, c: 3 }
  end

  it 'has zero elements in the hash' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Hash do
  subject(:my_hash) { { a: 1, b: 2 } }

  it 'has two elements' do
    expect(my_hash.length).to eq(2)
  end
end
