RSpec.describe Hash do
  let(:new_hash) { {} }
  let(:other_hash) { Hash.new }

  it 'should indicate an empty hash explicity - version 1' do
    expect(new_hash.length).to eq(0)
  end

  it 'should indicate an empty hash explicity - version 2' do
    expect(other_hash.length).to eq(0)
  end

  it 'should indicate an empty hash implicity' do
    expect(subject.length).to eq(0)
  end

  it 'should indicate the class Hash implicity' do
    expect(subject.class).to eq(Hash)
  end
end