RSpec.describe Array do
  let(:my_array) { [] }
  let(:another_array) { [] }

  it 'should indicate an empty array' do
    expect(subject.length).to eq(0)

    subject.push 10

    expect(subject.length).to eq(1)
  end

  it 'should indicate an empty array - explicitly' do
    expect(my_array.length).to eq(0)
  end

  it 'should indicate an empty array - version 2' do
    expect(another_array.length).to eq(0)
  end
end

RSpec.describe 'Array testing' do
  let(:my_array) { [] }

  it 'should indicate an empty array' do
    expect(my_array).to eq([])
    expect(my_array.length).to eq(0)

    my_array.push(20)

    expect(my_array.length).to eq(1)
  end
end
