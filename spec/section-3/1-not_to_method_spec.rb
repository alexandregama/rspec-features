RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(10)
    expect('Hello').not_to eq('hello')
    expect([10, 20]).not_to eq([10, 22])
  end
end
