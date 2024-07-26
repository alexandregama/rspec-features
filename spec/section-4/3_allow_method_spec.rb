# frozen_string_literal: true

class ApiService
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def read_invoices
    ['invoice A', 'invoice B', 'invoice C']
  end
end

RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles - returning nil' do
    calculator = double
    allow(calculator).to receive(:add)

    expect(calculator.add).to be_nil
  end

  it 'can customize return value for methods on doubles - adding a return value' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add(4)).to eq(15)
    expect(calculator.add('some string')).to eq(15)
  end

  it 'calculates the sum in a real array - without doubles' do
    array = [1, 2, 3]

    expect(array.sum).to eq(6)
  end

  it 'mocks the sum method in a real array' do
    array = [1, 2, 3]
    allow(array).to receive(:sum).and_return(10)

    expect(array.sum).to eq(10)
  end

  it 'mocks the sum method in a real array and keeps the other ones real' do
    array = [1, 2, 3]
    allow(array).to receive(:sum).and_return(10)

    array.push(4)

    expect(array.sum).to eq(10)
    expect(array).to eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:b, :c, nil)

    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end

  it 'tests the first method in a real array' do
    array = [10, 20, 30]

    expect(array.first).to eq(10)
    expect(array.first(1)).to eq([10])
    expect(array.first(2)).to eq([10, 20])
  end
end

RSpec.describe 'ApiService' do
  it 'gets the list of invoices from the Api' do
    api = ApiService.new('http://apiservice.com')

    expect(api.read_invoices).to eq(['invoice A', 'invoice B', 'invoice C'])
  end

  it 'mocks the reading of the invoices from the Api so that we do not need to call it directly' do
    api = ApiService.new('http://apiservice.com')
    allow(api).to receive(:read_invoices).and_return(['invoices'])

    expect(api.read_invoices).to eq(['invoices'])
  end
end
