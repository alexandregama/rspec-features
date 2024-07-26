RSpec.describe 'assignment' do
  describe 'tests with empty arrays and hashes' do
    it 'has an empty hash' do
      expect({}.empty?).to be(true)
      expect({}).to be_empty
    end

    it 'has an empty array' do
      expect([].empty?).to be(true)
      expect([]).to be_empty
    end
  end

  describe 'tests with even elements in an array' do
    it 'has only even elements in the array - version 1' do
      [10, 20, 30].each do |element|
        expect(element).to be_even
      end
    end

    it 'has only even elements in the array - version 2' do
      expect([10, 20, 30]).to all(be_even)
    end
  end

  describe 'tests with number elements in an array' do
    it 'has elements greater than or equal to 0 - version 1' do
      [0, 1, 2].each do |element|
        expect(element).to be >= 0
      end
    end

    it 'has elements greater than or equal to 0 - version 2' do
      expect([0, 1, 2]).to all(be >= 0)
    end
  end

  describe 'truthy or falsy' do
    it 'only has falsy elements' do
      expect(false).to be_falsy
      expect(nil).to be_falsy
    end

    it 'only has truthy elements' do
      expect("hello").to be_truthy
      expect(0).to be_truthy
      expect(-10).to be_truthy
      expect([]).to be_truthy
      expect(99.99).to be_truthy
      expect(:hello).to be_truthy
      expect(true).to be_truthy
      expect([1, 2, 3]).to be_truthy
    end
  end
end
