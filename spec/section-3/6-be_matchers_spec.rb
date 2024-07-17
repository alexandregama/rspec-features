RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(6).to be_truthy
    expect(-1).to be_truthy
    expect(:symbol).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
  end

  it 'can test for nil in hashes' do
    my_hash = { a: 1 }
    expect(my_hash[:b]).to be_nil
  end
end
