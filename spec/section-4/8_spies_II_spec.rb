class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) { instance_double(Car) }

  before do
    allow(Car).to receive(:new).and_return(car)
  end

  it 'adds a car to its storage - version 1' do
    subject.add_to_collection('Honda Civic')

    expect(Car).to have_received(:new).with('Honda Civic')
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.first).to eq(car)
  end

  it 'adds a car to its storage - version 2' do
    garage = Garage.new
    garage.add_to_collection('Honda Civic')

    expect(Car).to have_received(:new).with('Honda Civic')
    expect(garage.storage.length).to eq(1)
    expect(garage.storage.first).to eq(car)
  end
end
