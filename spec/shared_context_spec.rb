RSpec.shared_context 'common one' do
  before do
    @foods = []
  end

  def helper_method
    4
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.shared_context 'common two' do
  let(:new_variable) { { a:1, b: 2, c: 3 } }
end

RSpec.describe 'first example group' do
  include_context 'common one'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods.push 2
    expect(@foods.length).to eq(1)
  end

  it 'cannot reuse the same instance variable' do
    expect(@foods.length).to eq(0)
  end
end

RSpec.describe 'second example group' do
  include_context 'common one'

  it 'can use the helper method' do
    expect(helper_method).to eq(4)
  end

  it 'can use the some_variable' do
    expect(some_variable.length).to eq(3)
  end
end

RSpec.describe 'third example group' do
  include_context 'common two'

  it 'can use the new_variable' do
    expect(new_variable.length).to eq(3)
  end
end