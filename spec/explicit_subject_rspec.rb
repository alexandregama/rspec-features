RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end

  let(:john) { { a: 1, b: 2} }

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  it 'has two key-value pairs on john' do
    expect(john.length).to eq(2)
  end
  
  describe 'nested example' do
    it 'shows that nested examples also has access to the subject' do
      expect(bob.length).to eq(2)
    end
  end
end