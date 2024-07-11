RSpec.describe Array do
  let(:my_array) { [] }
  let(:another_array) { Array.new }

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