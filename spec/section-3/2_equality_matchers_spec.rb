RSpec.describe 'equality matchers' do
  let(:a) { 3 }
  let(:b) { 3.0 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3.0)
      expect(b).to eq(3)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value and type' do
      expect(a).not_to eql(3.0)
      expect(b).not_to eql(3)
      expect(a).not_to eql(b)

      expect(a).to eq(3)
      expect(b).to eq(3.0)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(d).to eq(c)
      expect(e).to eq(c)

      expect(e).to equal(c) # the same object in memory
      expect(e).not_to equal(d) # they're equal (in terms of value) but they're not the same (in terms of instance)
      expect(e).to be(c) # it's just a better alias

      expect(d).to eq([1, 2, 3])
      expect(e).to eq([1, 2, 3])
      expect(e).not_to equal([1, 2, 3])
    end
  end

  describe 'fun with hashes' do
    let(:my_hash) { { a: 1, b: 2 } }
    let(:your_hash) { { a: 1, b: 2 } }
    let(:some_hash) { my_hash }

    it 'is a test of your knowledge' do
      expect(my_hash).to eq(your_hash)
      expect(my_hash).to equal(some_hash)

      expect(my_hash).to eq(some_hash)
      expect(my_hash).to eq({ a: 1, b: 2 })
      expect(some_hash).to be(my_hash)
    end
  end
end
